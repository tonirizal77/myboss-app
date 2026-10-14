import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';

/// MyBoss text field (Figma `input`): label above a 48px outlined box.
class MyBossTextField extends StatelessWidget {
  const MyBossTextField({
    super.key,
    this.label,
    this.hint,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.inputFormatters,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.prefix,
    this.suffix,
    this.enabled = true,
    this.obscureText = false,
    this.maxLength,
    this.autofocus = false,
    this.textCapitalization = TextCapitalization.none,
    this.readOnly = false,
    this.fillColor,
    this.onTap,
  });

  final String? label;
  final String? hint;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final String? errorText;
  final Widget? prefix;
  final Widget? suffix;
  final bool enabled;
  final bool obscureText;
  final int? maxLength;
  final bool autofocus;
  final TextCapitalization textCapitalization;

  /// Shown but not editable (e.g. phone/email that change through OTP).
  final bool readOnly;
  final Color? fillColor;
  final VoidCallback? onTap;

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: color),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: MyBossTextStyles.caption.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          const SizedBox(height: 8),
        ],
        TextField(
          controller: controller,
          focusNode: focusNode,
          enabled: enabled,
          autofocus: autofocus,
          textCapitalization: textCapitalization,
          readOnly: readOnly,
          onTap: onTap,
          obscureText: obscureText,
          maxLength: maxLength,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          inputFormatters: inputFormatters,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          cursorColor: MyBossColors.primary,
          style: MyBossTextStyles.bodyBig2.copyWith(
            color: MyBossColors.onSurface,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: MyBossTextStyles.bodyBig2.copyWith(
              color: MyBossColors.grey50,
            ),
            counterText: '',
            isDense: false,
            filled: true,
            fillColor: fillColor ?? MyBossColors.surface,
            // Figma: 16px side padding, 22px icon, 8px gap.
            prefixIcon: prefix == null
                ? null
                : Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: prefix,
                  ),
            prefixIconConstraints: const BoxConstraints(),
            suffixIcon: suffix,
            constraints: const BoxConstraints(minHeight: 48),
            contentPadding: EdgeInsets.fromLTRB(
              prefix == null ? 16 : 0,
              12,
              16,
              12,
            ),
            border: _border(MyBossColors.outline),
            enabledBorder: _border(MyBossColors.outline),
            disabledBorder: _border(
              MyBossColors.outline.withValues(alpha: 0.5),
            ),
            focusedBorder: _border(MyBossColors.primary),
            errorBorder: _border(MyBossColors.danger),
            focusedErrorBorder: _border(MyBossColors.danger),
            errorText: errorText,
            errorStyle: MyBossTextStyles.caption.copyWith(
              color: MyBossColors.danger,
            ),
          ),
        ),
      ],
    );
  }
}
