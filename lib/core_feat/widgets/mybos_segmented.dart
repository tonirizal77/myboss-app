import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';

/// Option of a [MyBossSegmented] control.
class MyBossSegment<T> {
  const MyBossSegment({required this.value, required this.label});

  final T value;
  final String label;
}

/// Two-or-more option switch (e.g. Phone / Email). The selected segment is
/// filled with the brand color, the others stay flat.
class MyBossSegmented<T> extends StatelessWidget {
  const MyBossSegmented({
    super.key,
    required this.segments,
    required this.selected,
    required this.onChanged,
  });

  final List<MyBossSegment<T>> segments;
  final T selected;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: MyBossColors.outline.withValues(alpha: 0.6)),
      ),
      child: Row(
        children: [
          for (final segment in segments)
            Expanded(
              child: _Segment(
                label: segment.label,
                selected: segment.value == selected,
                onTap: () => onChanged(segment.value),
              ),
            ),
        ],
      ),
    );
  }
}

class _Segment extends StatelessWidget {
  const _Segment({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? MyBossColors.primary : Colors.transparent,
      borderRadius: BorderRadius.circular(5),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          alignment: Alignment.center,
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: MyBossTextStyles.buttonSmall.copyWith(
              color: selected
                  ? MyBossColors.onPrimary
                  : MyBossColors.onSurfaceVariant,
            ),
          ),
        ),
      ),
    );
  }
}
