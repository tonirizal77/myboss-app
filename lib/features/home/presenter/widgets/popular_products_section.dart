part of 'widgets.dart';

/// Popular products (`is_popular`) of the selected branch in the Home
/// catalog carousel, for guests and members alike. Loads on first build and
/// again when the branch changes; hidden while empty, loading for the first
/// time or failed.
class PopularProductsSection extends StatefulWidget {
  const PopularProductsSection({super.key});

  @override
  State<PopularProductsSection> createState() => _PopularProductsSectionState();
}

class _PopularProductsSectionState extends State<PopularProductsSection> {
  @override
  void initState() {
    super.initState();
    _load(context);
  }

  static void _load(BuildContext context) => context
      .read<PopularProductsCubit>()
      .load(context.read<StoreBranchCubit>().state.selected?.urlId ?? '');

  @override
  Widget build(BuildContext context) {
    return BlocListener<StoreBranchCubit, StoreBranchState>(
      listenWhen: (a, b) => a.selected?.urlId != b.selected?.urlId,
      listener: (context, _) => _load(context),
      child: BlocBuilder<PopularProductsCubit, PopularProductsState>(
        buildWhen: (a, b) => a.items != b.items || a.stats != b.stats,
        builder: (context, state) => state.items.isEmpty
            ? const SizedBox.shrink()
            : GuestCatalog(
                // The carousel keeps its page index: rebuild it when the
                // number of cards changes.
                key: ValueKey('home_popular_${state.items.length}'),
                items: state.items,
                // "View all N+ products": catalog total of the branch.
                total: state.stats.products,
                // Same title for guests and members ("Our Popular Products").
                title: LocaleKeys.home_member_popular_title.tr(),
                // Details are read on the branch the products came from.
                storeDomain: state.storeDomain,
              ),
      ),
    );
  }
}
