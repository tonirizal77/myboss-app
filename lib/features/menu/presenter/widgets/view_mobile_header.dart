part of 'widgets.dart';

class ViewMobileHeader extends StatefulWidget {
  const ViewMobileHeader({super.key});

  @override
  State<ViewMobileHeader> createState() => _ViewMobileHeaderState();
}

class _ViewMobileHeaderState extends State<ViewMobileHeader> {
  double _posisi = 0.0;
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(_handleController);
  }

  @override
  void dispose() {
    _controller.removeListener(_handleController);
    _controller.dispose();
    super.dispose();
  }

  // This method handles the notification from the ScrollController.
  void _handleController() async {
    _posisi = _controller.hasClients ? _controller.offset : _posisi;

    if (_posisi < 300) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          controller: _controller,
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(child: CardHeaderAnimasi()),

            /// Category Yogurt
            PinnedHeaderSliver(child: CardListCategoryMobile()),

            /// Title Topings
            SliverToBoxAdapter(child: const CardTopingsTitle()),

            SliverToBoxAdapter(child: const CardListToping()),

            /// Info
            SliverToBoxAdapter(child: const CardBottomMenu()),
          ],
        ),

        Positioned(
          top: 30 - _posisi,
          right: -100,
          child: const CardAnimMaskotMobile(),
        ),
      ],
    );
  }
}
