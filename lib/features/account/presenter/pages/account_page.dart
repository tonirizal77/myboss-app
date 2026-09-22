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
  /// stamps data to fetch - those endpoints require a real user session.
  bool get _isLoggedIn => UserFlows.isLoggedIn(context);

  Future<void> refreshData() async {
    if (!_isLoggedIn) return;

    PrintHelper.printError("__initsate or refresh ACCOUNT PAGE");

    /// Re-Get Profile
    await AccountFlows.getProfile(context);

    /// Get List Voucher
    await AccountFlows.getVouchers(context);

    /// Get History Stamps
    await AccountFlows.historyStamps(context);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // PrintHelper.inspectx(StoreFlows.store);

    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) =>
          previous.statusLogin != current.statusLogin,
      builder: (context, state) => _build(context, state),
    );
  }

  Widget _build(BuildContext context, UserState state) {
    final _isLoggedIn = state.statusLogin == Status.success;

    return ResponsivePage(
      useSafeArea: true,
      alignment: .center,
      onRefresh: () async => await refreshData(),
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
      spacing: 16,
      children: [
        if (_isLoggedIn) ...[
          const CardAccountMember(),
          const ListMenuBonus(),
        ] else
          const CardLoginRequired(),

        /// List Menu
        const ListMenuAkun(),

        /// Delete Account
        if (_isLoggedIn)
          CardCustom(
            radius: 24,
            isShadow: true,
            color: AppTheme.surface(context),
            padding: EdgeInsets.zero,
            child: ButtonMenuAkun(
              icon: Icon(Icons.person_remove, color: AppColors.error),
              arrowRight: true,
              title: Text(
                LocaleKeys.akun_delete_account.tr(),
                style: AppTextStyles.subtitle.copyWith(color: AppColors.error),
              ),
              onTap: () => AccountFlows.goToDeleteAccount(context),
            ),
          ),

        /// Follow Us
        const CardFollowUs(),

        Column(
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
                spacing: 8,
                children: [
                  const CardFollowUs(),
                  if (_isLoggedIn) const ListMenuBonus(),
                ],
              ),
            ),
          ],
        ),

        Flexible(child: const ListMenuAkun()),

        /// Delete Account
        if (_isLoggedIn)
          CardCustom(
            radius: 24,
            isShadow: true,
            color: AppTheme.surface(context),
            padding: EdgeInsets.zero,
            child: ButtonMenuAkun(
              icon: Icon(Icons.person_remove, color: AppColors.error),
              arrowRight: true,
              title: Text(
                LocaleKeys.akun_delete_account.tr(),
                style: AppTextStyles.subtitle.copyWith(color: AppColors.error),
              ),
              borderRadius: Responsive.isMobile(context)
                  ? BorderRadius.vertical(bottom: Radius.circular(20))
                  : BorderRadius.only(bottomRight: Radius.circular(20)),
              onTap: () => AccountFlows.goToDeleteAccount(context),
            ),
          ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
