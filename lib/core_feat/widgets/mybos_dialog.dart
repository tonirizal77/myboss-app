import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';
import 'mybos_button.dart';

/// MyBoss confirmation dialog (Figma `dialog`): centered title with two pill
/// buttons. Resolves to `true` when confirmed, `false`/`null` otherwise.
class MyBossDialog {
  MyBossDialog._();

  static Future<bool?> confirm(
    BuildContext context, {
    required String title,
    required String cancelLabel,
    required String confirmLabel,
    bool destructive = false,
    bool barrierDismissible = true,
  }) {
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
                child: Row(
                  children: [
                    Expanded(
                      child: MyBossButton(
                        label: cancelLabel,
                        role: MyBossButtonRole.secondary,
                        pill: true,
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: MyBossButton(
                        label: confirmLabel,
                        role: destructive
                            ? MyBossButtonRole.danger
                            : MyBossButtonRole.primary,
                        pill: true,
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ),
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
