part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with WidgetsBindingObserver, AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Guest (client token only, no real login yet) has no profile/points.
  bool get _isLoggedIn => UserFlows.isLoggedIn(context);

  FutureOr<void> _onReload(BuildContext context) async {
    if (!_isLoggedIn) return;

    // Profile + points balance (`balance_points`), one request.
    await AccountFlows.getProfile(context);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // Another branch: the member's profile (balance) is per branch.
    return BlocListener<StoreBranchCubit, StoreBranchState>(
      listenWhen: (a, b) => a.selected?.urlId != b.selected?.urlId,
      listener: (context, _) => _onReload(context),
      child: ResponsivePage(
        colorPage: MyBossColors.surfaceContainerLowest,
        backgroundColor: MyBossColors.surfaceContainerLowest,
        // Tablet / desktop default to centered: short content (few
        // products) would float down, away from the tabs.
        alignment: Alignment.topCenter,
        useSafeArea: true,
        useScrollView: true,
        // Branch selector stays put while the content scrolls.
        // Phone only - tablet/desktop show it in the main header.
        appBar: Responsive.isMobile(context)
            ? BranchHeader.appBar(context)
            : null,
        onRefresh: () async => await _onReload(context),
        body: BlocBuilder<UserBloc, UserState>(
          buildWhen: (previous, current) =>
              previous.statusLogin != current.statusLogin,
          builder: (context, state) {
            final _isLoggedIn = state.statusLogin == Status.success;

            return Responsive(
              mobile: _mobileView(context, _isLoggedIn),
              tablet: _tabletView(context, _isLoggedIn),
            );
          },
        ),
      ),
    );
  }

  /// Wide windows: same content as mobile, centered with a readable width.
  /// Scrolling is done by [ResponsivePage] (`useScrollView`).
  Widget _tabletView(BuildContext context, bool isLoggedIn) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 720),
      child: _content(isLoggedIn),
    );
  }

  /// Scrolling is done by [ResponsivePage] (`useScrollView`).
  Widget _mobileView(BuildContext context, bool isLoggedIn) =>
      _content(isLoggedIn);

  /// Guest: `Guest Home`, signed-in: `Home Signed-in` (Figma).
  Widget _content(bool isLoggedIn) =>
      isLoggedIn ? const SignedInHomeView() : const GuestHomeView();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    PrintHelper.printWarning("__AppLifecycleState HomePage: $state");
    switch (state) {
      case AppLifecycleState.resumed:
        _onReload(context);

        break;
      default:
        break;
    }
  }

  @override
  bool get wantKeepAlive => true;
}
