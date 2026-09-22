part of '../widgets.dart';

class OtpTextFields extends StatelessWidget {
  final List<TextEditingController> controllers;
  final List<FocusNode> focusNodes;
  final int length;
  final Color? fillColor;
  final bool? filled, showCursor;
  final void Function(String, int)? onChanged;
  final InputDecoration? decoration;
  final double height, width;
  final bool isError;

  const OtpTextFields({
    super.key,
    required this.controllers,
    required this.focusNodes,
    this.length = 5,
    this.fillColor,
    this.onChanged,
    this.decoration,
    this.height = 40,
    this.width = 68,
    this.filled,
    this.showCursor,
    this.isError = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 8,
      children: List.generate(length, (index) {
        return SizedBox(
          height: height,
          width: width,
          child: TextFormField(
            key: ValueKey('otp_field_$index'),
            controller: controllers[index],
            focusNode: focusNodes[index],
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            autofocus: false,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            showCursor: showCursor,
            autocorrect: false,
            enableSuggestions: false,
            onChanged: (value) => _onChanged(context, index, value),
            maxLength: null,
            style: AppTextStyles.subtitleBig2.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
            decoration: decoration ?? _defaultDecor(context),
          ),
        );
      }),
    );
  }

  void _onChanged(BuildContext context, int index, String value) {
    if (onChanged != null) {
      onChanged!(value, index);
      return;
    }

    InputOtpFlows.onOtpChanged(
      context,
      value,
      index,
      focusNodes: focusNodes,
      controllers: controllers,
    );
  }

  InputDecoration _defaultDecor(BuildContext context) {
    return InputDecoration(
      counterText: "",
      contentPadding: EdgeInsets.symmetric(vertical: 6.5),
      isDense: true,
      filled: true,
      fillColor: AppTheme.isDark(context) ? Colors.black : Colors.white,
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: isError ? AppTheme.error(context) : AppTheme.outline(context),
        ),
      ),
      focusedBorder: DecoratedInputBorder(
        child: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 2, color: AppTheme.outline(context)),
        ),
        shadow: BoxShadow(
          color: AppColors.shadowInput.withOpacity(.25),
          offset: const Offset(0, 1),
          blurRadius: 10,
          spreadRadius: 1,
        ),
      ),
    );
  }

  InputDecoration _underlineDecor(BuildContext context) {
    return InputDecoration(
      counterText: "",
      contentPadding: EdgeInsets.zero,
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppTheme.outline(context)),
      ),
      fillColor: fillColor,
      filled: filled,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppTheme.outline(context)),
      ),
    );
  }
}
