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

    await AccountFlows.getProfile(context); // ProfileBloc
    if (mounted) await context.read<PointsCubit>().load(); // balance
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ResponsivePage(
      colorPage: MyBossColors.surfaceContainerLowest,
      backgroundColor: MyBossColors.surfaceContainerLowest,
      useSafeArea: true,
      useScrollView: true,
      // Branch selector stays put while the content scrolls.
      appBar: BranchHeader.appBar(context),
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
