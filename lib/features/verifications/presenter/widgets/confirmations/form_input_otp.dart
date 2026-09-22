part of '../widgets.dart';

class FormInputOtp extends StatefulWidget {
  final int length;
  final void Function(String otp) onVerify;
  final bool isError;

  const FormInputOtp({
    super.key,
    required this.onVerify,
    this.length = 4,
    this.isError = false,
  });

  @override
  State<FormInputOtp> createState() => _FormInputOtpState();
}

class _FormInputOtpState extends State<FormInputOtp> {
  /// Textfield Controllers.
  late final List<TextEditingController> _controllers;

  /// Textfields Focus Node.
  late final List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _focusNodes = List.generate(widget.length, (_) => FocusNode());

    /// Init
    InputOtpFlows.init(
      context,
      focusNodes: _focusNodes,
      controllers: _controllers,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OtpTextFields(
      controllers: _controllers,
      focusNodes: _focusNodes,
      length: widget.length,
      showCursor: false,
      isError: widget.isError,
      onChanged: (value, index) {
        InputOtpFlows.onOtpChanged(
          context,
          value,
          index,
          focusNodes: _focusNodes,
          controllers: _controllers,
        );

        final otp = _controllers.map((e) => e.text).join();

        if (otp.length == widget.length && index == 3) {
          FocusManager.instance.primaryFocus?.unfocus();
          widget.onVerify(otp);
        }
      },
    );
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }
}
