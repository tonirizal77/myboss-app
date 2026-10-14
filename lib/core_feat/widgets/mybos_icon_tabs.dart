import 'package:flutter/material.dart';

import '../theme/mybos_colors.dart';
import '../theme/mybos_text_styles.dart';

/// One tab of [MyBossIconTabBar]. [icon] gets the color to paint with
/// (brand color when selected), so it can be an [Icon] or a custom shape.
class MyBossIconTab {
  const MyBossIconTab({required this.icon, required this.label});

  final Widget Function(Color color) icon;
  final String label;
}

/// Icon tabs on top of a page (Figma `toolbar`, e.g. Product categories,
/// Promo All / Points / Voucher): the selected tab gets a brand outline and
/// a brand-colored icon. Scrolls horizontally when it does not fit.
class MyBossIconTabBar extends StatelessWidget {
  const MyBossIconTabBar({
    super.key,
    required this.tabs,
    required this.selected,
    required this.onChanged,
  });

  static const double height = 112;
  static const double tabWidth = 88;

  final List<MyBossIconTab> tabs;
  final int selected;
  final ValueChanged<int> onChanged;

  /// Page header version (pinned while the page scrolls), below the status
  /// bar. [child] is usually a [MyBossIconTabBar] inside a BlocBuilder.
  /// [color] defaults to `surfaceContainer`; pass the page color for a
  /// header that blends into the body (Figma Promo).
  static PreferredSizeWidget appBar(
    BuildContext context,
    Widget child, {
    Color? color,
  }) {
    final top = MediaQuery.paddingOf(context).top;

    return PreferredSize(
      preferredSize: Size.fromHeight(height + top),
      child: ColoredBox(
        color: color ?? MyBossColors.surfaceContainer,
        child: SafeArea(bottom: false, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          itemCount: tabs.length,
          separatorBuilder: (_, _) => const SizedBox(width: 4),
          itemBuilder: (context, i) => _IconTab(
            tab: tabs[i],
            selected: i == selected,
            onTap: () => onChanged(i),
          ),
        ),
      ),
    );
  }
}

class _IconTab extends StatelessWidget {
  const _IconTab({
    required this.tab,
    required this.selected,
    required this.onTap,
  });

  final MyBossIconTab tab;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? MyBossColors.primary : MyBossColors.onSurface;

    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: onTap,
      child: Container(
        width: MyBossIconTabBar.tabWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: selected
                ? MyBossColors.primary.withValues(alpha: 0.7)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 32,
              height: 32,
              child: Center(child: tab.icon(color)),
            ),
            const SizedBox(height: 8),
            // Long names wrap to two lines ("Personal / Care").
            Text(
              tab.label,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: MyBossTextStyles.body.copyWith(
                color: MyBossColors.onSurface,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
