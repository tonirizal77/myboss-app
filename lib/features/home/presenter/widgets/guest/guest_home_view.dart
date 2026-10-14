part of '../widgets.dart';

/// Guest Home content (Figma `Guest Home`): hero, brands, catalog and the
/// points rewards panel. Data comes from [GuestHomeCubit].
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
    return BlocBuilder<GuestHomeCubit, GuestHomeState>(
      builder: (context, state) {
        final data = state.data;

        return Column(
          children: [
            const GuestHero(),
            Divider(height: 16, thickness: 0.5, color: MyBossColors.outline),
            if (data.brands.isNotEmpty)
              GuestBrands(brands: data.brands, categories: data.categoryCount),
            if (data.catalog.isNotEmpty)
              GuestCatalog(items: data.catalog, total: data.productCount),
            if (data.rewards.isNotEmpty) GuestRewards(rewards: data.rewards),
            const SizedBox(height: 80),
          ],
        );
      },
    );
  }
}
