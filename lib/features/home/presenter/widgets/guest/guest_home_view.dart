part of '../widgets.dart';

/// Guest Home content (Figma `Guest Home`): hero, brands, catalog and the
/// points rewards panel. Brands and counts come from [GuestHomeCubit], the
/// catalog from [PopularProductsSection], point rewards of the selected
/// branch from [PromoCubit].
class GuestHomeView extends StatefulWidget {
  const GuestHomeView({super.key});

  @override
  State<GuestHomeView> createState() => _GuestHomeViewState();
}

class _GuestHomeViewState extends State<GuestHomeView> {
  @override
  void initState() {
    super.initState();
    context.read<GuestHomeCubit>().load();
  }

  @override
  Widget build(BuildContext context) {
    return PromoBranchSync(
      child: BlocBuilder<GuestHomeCubit, GuestHomeState>(
        builder: (context, state) {
          final data = state.data;

          return Column(
            children: [
              const GuestHero(),
              const HomeSectionDivider(),
              if (data.brands.isNotEmpty)
                GuestBrands(
                  brands: data.brands,
                  categories: context.select(
                    (PopularProductsCubit c) => c.state.stats.categories,
                  ),
                ),
              // Popular products of the selected branch (API).
              const PopularProductsSection(),
              // Point rewards of the selected branch (API, shared with Promo).
              BlocBuilder<PromoCubit, PromoState>(
                buildWhen: (a, b) => a.content.rewards != b.content.rewards,
                builder: (context, promo) => promo.content.rewards.isEmpty
                    ? const SizedBox.shrink()
                    : GuestRewards(rewards: promo.content.rewards),
              ),
              // Room for the bottom nav, in the section background.
              Container(height: 80, color: MyBossColors.surfaceContainerLowest),
            ],
          );
        },
      ),
    );
  }
}
