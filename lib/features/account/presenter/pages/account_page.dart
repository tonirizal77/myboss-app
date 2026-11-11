part of 'pages.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage>
    with AutomaticKeepAliveClientMixin
//
{
  @override
  void initState() {
    super.initState();

    refreshData();
  }

  /// Guest (client token only, no real login yet) has no profile/voucher/
  /// points data to fetch - those endpoints require a real user session.
  bool get _isLoggedIn => UserFlows.isLoggedIn(context);

  Future<void> refreshData() async {
    if (!_isLoggedIn) return;

    PrintHelper.printError("__initsate or refresh ACCOUNT PAGE");

    /// Profile + points balance (`balance_points`) from profile/info, voucher
    /// count = unused vouchers (`/profile/discount-vouchers?is_used=false`).
    final points = context.read<PointsCubit>();
    final vouchers = context.read<MemberVoucherCubit>();
    await Future.wait([
      AccountFlows.getProfile(context),
      points.load(),
      // Vouchers belong to the branch selected in the header.
      vouchers.load(
        VoucherStatus.active,
        storeDomain:
            context.read<StoreBranchCubit>().state.selected?.urlId ?? '',
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // PrintHelper.inspectx(StoreFlows.store);

    /// The tab is kept alive, so it may have been built as a guest: fetch
    /// the user's data again once they sign in (initState already covers
    /// opening it while signed in).
    return MultiBlocListener(
      listeners: [
        BlocListener<UserBloc, UserState>(
          listenWhen: UserFlows.justSignedIn,
          listener: (context, _) => refreshData(),
        ),
        // Another branch: its own vouchers (count on the Vouchers row).
        BlocListener<StoreBranchCubit, StoreBranchState>(
          listenWhen: (a, b) => a.selected?.urlId != b.selected?.urlId,
          listener: (context, _) => refreshData(),
        ),
      ],
      child: BlocBuilder<UserBloc, UserState>(
        buildWhen: (previous, current) =>
            previous.statusLogin != current.statusLogin,
        builder: (context, state) => _build(context, state),
      ),
    );
  }

  Widget _build(BuildContext context, UserState state) {
    final _isLoggedIn = state.statusLogin == Status.success;

    return ResponsivePage(
      useSafeArea: true,
      alignment: .topCenter,
      onRefresh: refreshData,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Responsive(
          mobile: _mobileView(_isLoggedIn, context),
          tablet: _tabletView(_isLoggedIn, context),
        ),
      ),
    );
  }

  Flex _mobileView(bool _isLoggedIn, BuildContext context) {
    return Flex(
      mainAxisSize: .min,
      direction: Axis.vertical,
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        if (_isLoggedIn) ...[
          const CardAccountMember(),
          const AccountStatsCard(),
          _logoutRow(context),
          _deleteRow(context),
          // Deletion pending (Figma `Account — Deletion Pending`).
          ValueListenableBuilder<bool>(
            valueListenable: DeleteAccountLocalState.isPendingNotifier,
            builder: (context, isPending, _) => isPending
                ? const DeleteAccountPendingPanel()
                : const SizedBox.shrink(),
          ),
        ] else
          const CardLoginRequired(),

        /// List Menu
        Visibility(visible: false, child: const ListMenuAkun()),

        /// Follow Us
        /// MARK: Belum diperlukan
        // const CardFollowUs(),
        Visibility(
          // visible: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Swith bahasa
              Visibility(
                visible: !Responsive.isPhoneLandscape(context),
                child: SwitchLocaleBar(tipe: TipeSwitch.rolling),
              ),
              Visibility(
                visible: !Responsive.isPhoneLandscape(context),
                child: const DrawerVersionx(),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _tabletView(bool _isLoggedIn, BuildContext context) {
    return Column(
      mainAxisSize: .min,
      spacing: 16,
      children: [
        Flex(
          mainAxisSize: .min,
          direction: Axis.horizontal,
          crossAxisAlignment: .start,
          spacing: 16,
          children: [
            Expanded(
              child: _isLoggedIn
                  ? const CardAccountMember()
                  : const CardLoginRequired(),
            ),

            Flexible(
              child: Flex(
                direction: Axis.vertical,
                mainAxisSize: .min,
                spacing: 16,
                mainAxisAlignment: .spaceBetween,
                children: [
                  // const CardFollowUs(),
                  if (_isLoggedIn) const AccountStatsCard(),

                  if (_isLoggedIn) ...[
                    _logoutRow(context),
                    _deleteRow(context),
                    // Deletion pending (Figma `Account — Deletion Pending`).
                    ValueListenableBuilder<bool>(
                      valueListenable:
                          DeleteAccountLocalState.isPendingNotifier,
                      builder: (context, isPending, _) => isPending
                          ? const DeleteAccountPendingPanel()
                          : const SizedBox.shrink(),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),

        Visibility(
          visible: false,
          child: Flexible(child: const ListMenuAkun()),
        ),
      ],
    );
  }

  Widget _logoutRow(BuildContext context) => AccountDangerRow(
    icon: Icons.logout,
    label: LocaleKeys.akun_logout.tr(),
    onTap: () => AccountFlows.goToLogout(context),
  );

  Widget _deleteRow(BuildContext context) => AccountDangerRow(
    icon: Icons.person_remove_outlined,
    label: LocaleKeys.akun_delete_account.tr(),
    onTap: () => AccountFlows.goToDeleteAccount(context),
  );

  @override
  bool get wantKeepAlive => true;
}
