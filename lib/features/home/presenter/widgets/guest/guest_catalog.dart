part of '../widgets.dart';

/// "Our Product Catalogs": centered carousel of product cards, the focused
/// card is raised, followed by the "View all" call to action.
class GuestCatalog extends StatefulWidget {
  const GuestCatalog({
    super.key,
    required this.items,
    required this.total,
    this.title,
  });

  final List<CatalogPreview> items;
  final int total;

  /// Defaults to the guest title ("Our Product Catalogs").
  final String? title;

  @override
  State<GuestCatalog> createState() => _GuestCatalogState();
}

class _GuestCatalogState extends State<GuestCatalog> {
  static const double _cardWidth = 120;
  static const double _gap = 12;

  late int _current = widget.items.length > 2 ? 2 : 0;
  PageController? _controller;
  double? _fraction;

  PageController _controllerFor(double width) {
    final fraction = (_cardWidth + _gap) / width;
    if (_controller == null || _fraction != fraction) {
      _controller?.dispose();
      _fraction = fraction;
      _controller = PageController(
        viewportFraction: fraction,
        initialPage: _current,
      );
    }
    return _controller!;
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyBossColors.surfaceContainerLowest,
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 64),
      child: Column(
        children: [
          Text(
            widget.title ?? LocaleKeys.guest_home_catalogs_title.tr(),
            textAlign: TextAlign.center,
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              final controller = _controllerFor(constraints.maxWidth);

              return SizedBox(
                height: 196,
                child: PageView.builder(
                  controller: controller,
                  itemCount: widget.items.length,
                  onPageChanged: (i) => setState(() => _current = i),
                  itemBuilder: (_, i) => Align(
                    alignment: Alignment.topCenter,
                    child: GuestProductCard(
                      name: widget.items[i].name,
                      image: widget.items[i].image,
                      chip: widget.items[i].category,
                      focused: i == _current,
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.guest_home_view_all.tr(args: ['${widget.total}']),
            style: MyBossTextStyles.bodyBig2.copyWith(
              color: MyBossColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          MyBossButton(
            label: LocaleKeys.guest_home_explore.tr(),
            trailing: SvgPicture.asset(
              Assets.icArrowSquareRight,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                MyBossColors.onPrimary,
                BlendMode.srcIn,
              ),
            ),
            // Product tab
            onPressed: () => MainPageFlow.onChangeTab(context, 1),
          ),
        ],
      ),
    );
  }
}

/// Catalog card with its category chip overlapping the top edge.
class GuestProductCard extends StatelessWidget {
  const GuestProductCard({
    super.key,
    required this.name,
    required this.image,
    required this.chip,
    this.focused = false,
  });

  final String name;
  final String image;
  final String chip;
  final bool focused;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          /// Card (starts below the top 10px that the chip overlaps)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: MyBossColors.surfaceContainerLow,
                borderRadius: BorderRadius.circular(8),
                boxShadow: focused
                    ? [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.18),
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ]
                    : null,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 14, 4, 4),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(image, fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: MyBossTextStyles.subtitleSmall.copyWith(
                          color: MyBossColors.onSurface,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Category chip, drawn above the card edge
          Positioned(
            top: 0,
            child: MyBossStatusChip(
              label: chip,
              kind: focused ? MyBossChipKind.success : MyBossChipKind.neutral,
            ),
          ),
        ],
      ),
    );
  }
}
