part of '../widgets.dart';

class FormInputOtp extends StatefulWidget {
  final int length;
  final void Function(String otp) onVerify;

  /// Called with the current code on every change, including when digits are
  /// deleted (also by the backspace key handler, which clears controllers
  /// without going through the text field's `onChanged`). Empty/partial
  /// codes are reported too, so the parent never keeps a stale full code.
  final void Function(String otp)? onChanged;
  final bool isError;

  const FormInputOtp({
    super.key,
    required this.onVerify,
    this.onChanged,
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

  String _lastOtp = "";

  String get _otp => _controllers.map((e) => e.text).join();

  void _notifyChanged() {
    final otp = _otp;
    if (otp == _lastOtp) return;
    _lastOtp = otp;
    widget.onChanged?.call(otp);
  }

  /// Paste (e.g. a copied OTP): spread the digits over the fields. A code at
  /// least as long as the form fills it from the first field; a shorter one
  /// fills from the field that received it.
  void _onPaste(int index, String digits) {
    if (!mounted || digits.isEmpty) return;

    final start = digits.length >= widget.length ? 0 : index;
    final chars = digits.characters.take(widget.length - start).toList();

    for (var i = 0; i < chars.length; i++) {
      _controllers[start + i].text = chars[i];
    }

    final next = start + chars.length;

    if (_otp.length == widget.length) {
      FocusManager.instance.primaryFocus?.unfocus();
      widget.onVerify(_otp);
    } else {
      _focusNodes[next.clamp(0, widget.length - 1)].requestFocus();
    }
  }

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    for (final c in _controllers) {
      c.addListener(_notifyChanged);
    }
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
      onPaste: _onPaste,
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
      controller.removeListener(_notifyChanged);
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }
}
