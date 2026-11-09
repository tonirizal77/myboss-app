import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';
import 'mybos_button.dart';

/// MyBoss confirmation dialog (Figma `dialog`): centered title with two pill
/// buttons. Resolves to `true` when confirmed, `false`/`null` otherwise.
///
/// [icon]: shown in a circle above the title (danger color when
/// [destructive]). [stacked]: full-width buttons, cancel above confirm
/// (Figma delete-account warning) instead of side by side.
class MyBossDialog {
  MyBossDialog._();

  static Future<bool?> confirm(
    BuildContext context, {
    required String title,
    required String cancelLabel,
    required String confirmLabel,
    bool destructive = false,
    bool barrierDismissible = true,
    IconData? icon,
    bool stacked = false,
  }) {
    final accent = destructive ? MyBossColors.danger : MyBossColors.primary;

    // Pops with the dialog's own context: the caller's [context] may be gone
    // by the time a button is tapped (e.g. a sheet rebuilt underneath).
    Widget button(BuildContext dialog, String label, bool value) =>
        MyBossButton(
          label: label,
          role: !value
              ? MyBossButtonRole.secondary
              : destructive
              ? MyBossButtonRole.danger
              : MyBossButtonRole.primary,
          pill: true,
          expand: stacked,
          onPressed: () => Navigator.of(dialog).pop(value),
        );

    return showDialog<bool>(
      context: context,
      barrierDismissible: barrierDismissible,
      builder: (context) => Dialog(
        backgroundColor: MyBossColors.surface,
        insetPadding: const EdgeInsets.symmetric(horizontal: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 344),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: accent,
                    ),
                    child: Icon(icon, size: 32, color: MyBossColors.surface),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: MyBossTextStyles.title.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: stacked
                    ? Column(
                        spacing: 12,
                        children: [
                          button(context, cancelLabel, false),
                          button(context, confirmLabel, true),
                        ],
                      )
                    : Row(
                        spacing: 16,
                        children: [
                          Expanded(child: button(context, cancelLabel, false)),
                          Expanded(child: button(context, confirmLabel, true)),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
