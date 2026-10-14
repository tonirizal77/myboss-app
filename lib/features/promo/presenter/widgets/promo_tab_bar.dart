part of 'widgets.dart';

/// All / Points / Voucher tabs on top of the Promo page.
class PromoTabBar extends StatelessWidget {
  const PromoTabBar({super.key});

  /// Figma: header and body share one dark gray, no seam between them.
  static Color get background => MyBossColors.surfaceContainerLow;

  static PreferredSizeWidget appBar(BuildContext context) =>
      MyBossIconTabBar.appBar(context, const PromoTabBar(), color: background);

  @override
  Widget build(BuildContext context) {
    final bar = background;

    return BlocBuilder<PromoCubit, PromoState>(
      buildWhen: (a, b) => a.tab != b.tab,
      builder: (context, state) => MyBossIconTabBar(
        tabs: [
          MyBossIconTab(
            label: LocaleKeys.promo_tab_all.tr(),
            icon: (c) => Icon(Icons.sell, size: 32, color: c),
          ),
          MyBossIconTab(
            label: LocaleKeys.promo_tab_points.tr(),
            icon: (c) => PointsBadge(size: 30, color: c, holeColor: bar),
          ),
          MyBossIconTab(
            label: LocaleKeys.promo_tab_voucher.tr(),
            // Scalloped seal with a % cut out (Figma voucher icon).
            icon: (c) => Stack(
              alignment: Alignment.center,
              children: [
                PointsBadge(size: 30, color: c, holeColor: c),
                Icon(Icons.percent, size: 16, color: bar),
              ],
            ),
          ),
        ],
        selected: state.tab.index,
        onChanged: (i) =>
            context.read<PromoCubit>().selectTab(PromoTab.values[i]),
      ),
    );
  }
}
