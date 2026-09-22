part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with WidgetsBindingObserver, AutomaticKeepAliveClientMixin {
  List<int> _listData = List.generate(50, (int i) => i + 1);
  List<int> _breakPoint = [4, 9, 21, 48];
  int _maxStamps = 50; // max_stamp
  int _level = 1;
  int _filledStamps = 0;

  @override
  void initState() {
    super.initState();

    if (_isLoggedIn) {
      StampsFlows.getStamps(context);
      StampsFlows.getStampsBreak(context);
    }

    /// Do Something after 3 seconds
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      PrintHelper.printWarning("__initialize home page");

      /// Call Socket
      if (_isLoggedIn) context.read<StampsNotifCubit>().initializeSocket();

      /// Process Initialize stamps
      await _updateStamps(3);
    });

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// Guest (client token only, no real login yet) has no customer_id -
  /// stamps socket only makes sense for a real logged-in user.
  bool get _isLoggedIn => UserFlows.isLoggedIn(context);

  /// Guest has no profile - show login prompt instead of the member card.
  Widget _memberCard(bool isLoggedIn) {
    return isLoggedIn
        ? const CardMemberHome()
        : Container(
            margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: const CardLoginRequired(),
          );
  }

  /// Redirect to update state stamps
  Future<void> _updateStamps(int times) async {
    await Future.delayed(Duration(seconds: times), () {
      if (mounted) {
        PrintHelper.printError("__update stamps");
        setState(() {
          _filledStamps = StampsFlows.stamps.filledStamp;
          _maxStamps = StampsFlows.stamps.maxStamp == 0
              ? 50
              : StampsFlows.stamps.maxStamp;
          _breakPoint = StampsFlows.breakPoints;
          _level = StampsFlows.stamps.level == 0 ? 1 : StampsFlows.stamps.level;
        });
      }
    });
  }

  FutureOr<void> _onReload(BuildContext context) async {
    if (!_isLoggedIn) return;

    await AccountFlows.getProfile(context); // ProfileBloc
    await StampsFlows.getStamps(context, param: {'is_realtime': 1}); // Stamps
    await StampsFlows.getStampsBreak(context); // Stamps
    await _updateStamps(3);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ResponsivePage(
      colorPage: AppTheme.surface(context),
      backgroundColor: AppTheme.surface(context),
      useSafeArea: true,
      onRefresh: () async => await _onReload(context),
      body: BlocListener<StampsNotifCubit, StampsNotifState>(
        listener: (context, state) async {
          await StampsFlows.listenSocketStampsNotif(
            context,
            state,
            callback: () async => await _onReload(context),
          );
        },
        child: BlocBuilder<UserBloc, UserState>(
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

  Column _tabletView(BuildContext context, bool isLoggedIn) {
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      children: [
        Container(
          color: AppTheme.surface(context),
          padding: const EdgeInsets.fromLTRB(0, 24, 12, 24),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              /// Member
              Expanded(child: _memberCard(isLoggedIn)),

              /// Pint Frame Stamps
              if (isLoggedIn) Expanded(child: const StampsFrame()),
            ],
          ),
        ),

        if (isLoggedIn)
          Flexible(
            child: Flex(
              mainAxisSize: .min,
              direction: Axis.horizontal,
              crossAxisAlignment: .start,
              children: [
                /// List Stamps
                Expanded(child: _showListData(context)),

                /// Message Card
                Expanded(
                  child: SingleChildScrollView(
                    child: Flex(
                      direction: Axis.vertical,
                      mainAxisSize: .min,
                      children: [
                        CardMessage(padding: EdgeInsets.all(16), tiers: _level),
                        Flexible(
                          child: const CardMessageFree(
                            padding: EdgeInsets.all(24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        else
          const Flexible(child: CardMessageFree()),
      ],
    );
  }

  CustomScrollView _mobileView(BuildContext context, bool isLoggedIn) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(child: _memberCard(isLoggedIn)),

        if (isLoggedIn) ...[
          PinnedHeaderSliver(child: const StampsFrame()),
          SliverToBoxAdapter(child: _showListData(context)),
          SliverToBoxAdapter(child: CardMessage(tiers: _level)),
        ],

        const SliverToBoxAdapter(child: CardMessageFree()),
      ],
    );
  }

  Widget _showListData(BuildContext context) {
    return BlocBuilder<StampsCubit, StampsState>(
      builder: (context, state) {
        _filledStamps = state.stamps.filledStamp;
        _maxStamps = state.stamps.maxStamp == 0
            ? _maxStamps
            : state.stamps.maxStamp;

        return ResponsiveGridOrWrap(
          styling: true,
          useScrollView: true,
          bgColor: AppTheme.surface(context),
          tipe: TipeView.gridview,
          maxHeight: 72,
          spacing: 0,
          runSpacing: 0,
          listData: _listData,
          mobile: 5,
          tablet: 5,
          desktop: 5,
          padding: EdgeInsets.only(bottom: 64),
          colorUtama: AppTheme.surface(context),
          radius: 0,
          child: (e) {
            final _isFree = _breakPoint.contains(e);
            bool _current = _filledStamps == e;
            final _inRange = e <= _filledStamps;

            return StampsWidget(
              index: e,
              inRange: _inRange,
              current: _current,
              isFree: _isFree,
              maxStamps: _maxStamps,
              tiers: _level,
              totalStamps: _filledStamps,
            );
          },
        );
      },
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    PrintHelper.printWarning("__AppLifecycleState HomePage: $state");
    switch (state) {
      case AppLifecycleState.resumed:
        if (_isLoggedIn) getIt<StampsNotifCubit>().initializeSocket();

        _onReload(context);

        break;
      default:
        break;
    }
  }

  @override
  bool get wantKeepAlive => true;
}
