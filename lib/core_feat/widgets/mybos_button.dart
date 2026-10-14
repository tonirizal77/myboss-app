import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';

enum MyBossButtonRole { primary, secondary, danger }

enum MyBossButtonStyle { filled, text }

enum MyBossButtonSize {
  /// Default button: 16x8 padding around a 24px line (40px tall).
  regular(40),

  /// Form button (e.g. Sign in / Submit): 56px tall.
  large(56);

  const MyBossButtonSize(this.height);
  final double height;
}

/// MyBoss button (Figma `button`: role x style x size x state x loading).
class MyBossButton extends StatelessWidget {
  const MyBossButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.role = MyBossButtonRole.primary,
    this.style = MyBossButtonStyle.filled,
    this.size = MyBossButtonSize.regular,
    this.pill = false,
    this.expand = false,
    this.loading = false,
    this.leading,
    this.trailing,
  });

  final String label;
  final VoidCallback? onPressed;
  final MyBossButtonRole role;
  final MyBossButtonStyle style;
  final MyBossButtonSize size;

  /// Fully rounded (dialog buttons); default radius is 5.
  final bool pill;

  /// Take the full available width.
  final bool expand;
  final bool loading;
  final Widget? leading;
  final Widget? trailing;

  bool get _enabled => onPressed != null && !loading;

  Color get _filledBg => switch (role) {
    MyBossButtonRole.primary => MyBossColors.primary,
    MyBossButtonRole.secondary => MyBossColors.surfaceContainer,
    MyBossButtonRole.danger => MyBossColors.danger,
  };

  Color get _filledFg => switch (role) {
    MyBossButtonRole.primary => MyBossColors.onPrimary,
    MyBossButtonRole.secondary => MyBossColors.onSurface,
    MyBossButtonRole.danger => MyBossColors.onDanger,
  };

  Color get _textFg => switch (role) {
    MyBossButtonRole.primary => MyBossColors.primary,
    MyBossButtonRole.secondary => MyBossColors.onSurface,
    MyBossButtonRole.danger => MyBossColors.danger,
  };

  @override
  Widget build(BuildContext context) {
    final filled = style == MyBossButtonStyle.filled;
    final bg = filled ? _filledBg : Colors.transparent;
    final fg = filled ? _filledFg : _textFg;

    final disabledBg = filled
        ? MyBossColors.onSurface.withValues(alpha: 0.12)
        : Colors.transparent;
    final disabledFg = MyBossColors.onSurface.withValues(alpha: 0.38);

    final radius = BorderRadius.circular(pill ? 1000 : 5);
    final textColor = _enabled || loading ? fg : disabledFg;

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: size.height),
      child: Material(
        color: _enabled || loading ? bg : disabledBg,
        borderRadius: radius,
        clipBehavior: Clip.antiAlias,
        elevation: filled && role == MyBossButtonRole.primary && _enabled
            ? 1
            : 0,
        shadowColor: Colors.black,
        child: InkWell(
          onTap: _enabled ? onPressed : null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (loading)
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: textColor,
                    ),
                  )
                else ...[
                  if (leading != null) ...[
                    IconTheme(
                      data: IconThemeData(color: textColor, size: 24),
                      child: leading!,
                    ),
                    const SizedBox(width: 8),
                  ],
                  Flexible(
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: MyBossTextStyles.button.copyWith(color: textColor),
                    ),
                  ),
                  if (trailing != null) ...[
                    const SizedBox(width: 8),
                    IconTheme(
                      data: IconThemeData(color: textColor, size: 24),
                      child: trailing!,
                    ),
                  ],
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
