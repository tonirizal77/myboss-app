import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';

enum MyBossChipKind { neutral, success, danger, primary }

/// Small pill label (Figma `status`), e.g. Open / Closed / Audio / Wearable.
class MyBossStatusChip extends StatelessWidget {
  const MyBossStatusChip({
    super.key,
    required this.label,
    this.kind = MyBossChipKind.neutral,
    this.width,
  });

  final String label;
  final MyBossChipKind kind;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final (bg, fg) = switch (kind) {
      MyBossChipKind.neutral => (
        MyBossColors.surfaceContainerLow,
        MyBossColors.onSurfaceVariant,
      ),
      MyBossChipKind.success => (MyBossColors.success, MyBossColors.onSuccess),
      MyBossChipKind.danger => (MyBossColors.danger, MyBossColors.onDanger),
      MyBossChipKind.primary => (MyBossColors.primary, MyBossColors.onPrimary),
    };

    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: kind == MyBossChipKind.neutral ? 4 : 8,
        vertical: kind == MyBossChipKind.neutral ? 0 : 2,
      ),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: MyBossTextStyles.subtitleSmall.copyWith(color: fg),
      ),
    );
  }
}
