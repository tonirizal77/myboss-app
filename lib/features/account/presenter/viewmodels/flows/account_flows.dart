part of 'flows.dart';

class AccountFlows {
  AccountFlows._();

  static ProfileModel get profile => getIt<ProfileBloc>().state.profile;

  /// Code Expire ex: "2026-07-24T20:51:39Z"
  static String get codeExpireTime =>
      getIt<ProfileBloc>().state.genCode.codeExpiry;

  /// Remaining time until [codeExpireTime], clamped to zero if it's empty,
  /// unparseable, or already in the past - use `.inMinutes` for whole
  /// minutes remaining.
  static int get codeExpireDuration {
    final _expiry = DateTime.tryParse(codeExpireTime);
    if (_expiry == null) return 1;

    final _diff = DateTimeExtension.minuteBettween(DateTime.now(), _expiry);

    PrintHelper.printData(
      "__duration: $_expiry == ${DateTime.now()} --> $_diff",
    );

    return _diff.isNegative ? 1 : _diff;
  }

  /// === MEMBER BARCODE REFRESH SESSION === ///
  ///
  /// The reset target is [codeExpireDuration] (server-driven, in minutes)
  /// rather than a hardcoded client duration.
  ///
  /// Tracked here (not on [CardMemberBarcode]'s State) so the countdown
  /// survives the sheet being closed and reopened - [MainPageFlow.
  /// showBarcodeMember] can skip re-hitting the generate-code API if the
  /// previous code is still valid, and [CardMemberBarcode] can resume the
  /// countdown from where it left off instead of restarting at full time.

  /// Auto-close the sheet after this many refreshes so an idle barcode
  /// isn't left open indefinitely.
  static const maxCodeRefresh = 2;

  static DateTime? _nextCodeRefreshAt;
  static int codeRefreshCount = 0;

  static bool get hasActiveCode =>
      _nextCodeRefreshAt != null && _nextCodeRefreshAt!.isAfter(DateTime.now());

  static Duration get remainingCodeDuration {
    if (!hasActiveCode) return Duration(minutes: codeExpireDuration);
    return _nextCodeRefreshAt!.difference(DateTime.now());
  }

  /// Call when opening the barcode sheet fresh (no active code left).
  static void resetCodeRefreshSession() {
    codeRefreshCount = 0;
    _nextCodeRefreshAt = null;
  }

  /// === HANDLERS === ///

  /// - Update State Profile after Success Change Phone or Email
  static Future<void> onChangedProfile(
    BuildContext context,
    DataMap data,
  ) async {
    /// 1. Update State Profile with state.result
    /// 2. Show Info
    /// 3. Back to Edit Profile Page
    ///

    context.read<ProfileBloc>().add(
      ProfileEvent.updateProfilePhoneOrEmail(data),
    );

    await getIt<FlushbarHelper>()
        .showNormalFlushbar(
          context: context,
          message: "Profile success updated!",
        )
        .whenComplete(() {
          GoRouterSingleton.shared.popUntil(
            context: context,
            targetLocation: RouteNames.editProfilePage,
          );
        });
  }

  /// 1. Get Data Profile
  static Future<void> getProfile(BuildContext context) async {
    final bloc = context.read<ProfileBloc>();

    bloc.add(ProfileEvent.getProfile());

    await bloc.stream.firstWhere(
      (s) =>
          s.statusFecthProfile == Status.success ||
          s.statusFecthProfile == Status.failed,
    );
  }

  /// 2. Goto Page Edit Profile
  static void goToEditProfile(BuildContext context) {
    /// - initialize Form Data
    ProfileEditFlows.initializeFormData(context);

    /// - Goto Page Edit Profile
    context.pushNamed(RouteNames.editProfilePage);
  }

  /// 3. Goto Page Verify Change Phone Number
  static void goToNewPhonePage(BuildContext context) {
    context.pushNamed(RouteNames.newPhoneNumberPage);
  }

  /// 4. Goto Page Verify Change Email
  static void goToNewEmailPage(BuildContext context) {
    context.pushNamed(RouteNames.newEmailPage);
  }

  /// 5. Goto Page Verify Change Phone Number
  static void goToLogout(BuildContext context) {
    ResponsiveDialog.sheetOrDialog(
      context,
      tipe: TipeResponsive.dialog,
      tipeDialog: TipeDialog.action,
      title: Text(
        LocaleKeys.dialog_title_logout.tr(),
        style: AppTextStyles.title,
      ),
      // showIcon: true,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          LocaleKeys.dialog_desc_logout.tr(),
          style: AppTextStyles.title.copyWith(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      colorButton: Colors.red,
      colorText: Colors.white,
      label1: LocaleKeys.button_back.tr(),
      label2: LocaleKeys.button_logout.tr(),
      radius: 10,
      onApply: () {
        context.pop();

        UserFlows.logoutUser(context);
      },
      onCancel: () {
        Navigator.of(context).canPop() ? context.pop() : null;
      },
    );
  }

  /// - Delete Account
  static void goToDeleteAccount(BuildContext context) {
    ResponsiveDialog.sheetOrDialog(
      context,
      colorFrame: AppTheme.surface(context),
      colorBody: AppTheme.surface(context),
      paddingBody: SyncUI.isAndroid ? 16 : 32,
      padding: EdgeInsets.all(SyncUI.isAndroid ? 16 : 32),
      radius: 20,
      child: const DeleteAccountSheetContent(),
    );
  }

  /// 6. Goto Page Verify Change Phone Number
  static Future<void> showContactUs(BuildContext context) async {
    final _store = context.read<StoreBloc>().state.store;

    final _messageWa = "Hallo Ha-Yo";

    final _linkIG = _store.linkInstagram ?? "";
    final _validLinkIG = _linkIG.contains('www.instagram.com') == true
        ? _linkIG
        : 'https://www.instagram.com/${_linkIG}';

    final _listContact = [
      {
        'id': 1,
        'name': 'WhatsApp',
        'icon': Assets.contactWa,
        'link': 'https://${_store.chatWhatsapp}?text=$_messageWa',
      },
      {
        'id': 2,
        'name': 'Email',
        'icon': Assets.contactEmail,
        'link': '${_store.email}',
      },
      {
        'id': 3,
        'name': 'Instagram',
        'icon': Assets.contactIG,
        'link': _validLinkIG,
      },
    ];

    ResponsiveDialog.sheetOrDialog(
      context,
      colorFrame: AppTheme.surface(context),
      title: Text("Contact Us", style: AppTextStyles.title),
      // styleTitle: AppTextStyles.title,
      colorBody: AppTheme.surface(context),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, i) {
          final _links = _listContact[i]['link'].toString();
          final _isEmail = _listContact[i]['id'] == 2;

          return Buttons(
            isBorder: false,
            height: 56,
            rounded: 0,
            onTap: () async {
              if (_isEmail) {
                await OpenLinksHelper.launchEmail(
                  context,
                  email: _links,
                  subject: _messageWa,
                );
              } else {
                await OpenLinksHelper.openLinks(context, link: _links);
              }
            },
            child: _childContactUs(_listContact, i),
          );
        },
        separatorBuilder: (_, i) => Divider(color: AppTheme.outline(context)),
        itemCount: _listContact.length,
      ),
    );
  }

  static Row _childContactUs(List<Map<String, Object>> _listContact, int i) {
    return Row(
      spacing: 12,
      children: [
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(_listContact[i]['icon'].toString()),
        ),
        Text(
          _listContact[i]['name'].toString(),
          style: AppTextStyles.subtitle,
        ), //
      ],
    );
  }

  /// 7. Goto Page About Us
  static void goToAboutUsPage(BuildContext context) {
    context.pushNamed(RouteNames.aboutUsPage);
  }

  /// 8. Goto Page Faq Us
  static void goToFaqPage(BuildContext context) {
    context.pushNamed(RouteNames.faqPage);
  }

  /// 9. Goto Page TNC Us
  static void goToTncPage(BuildContext context) {
    context.pushNamed(RouteNames.tncPage);
  }

  /// 10. Goto Page TNC Us
  static void goToVoucherPage(BuildContext context) {
    context.pushNamed(RouteNames.voucherPage);
  }

  /// 11. Goto Page TNC Us
  static void goToStampPage(BuildContext context) {
    context.pushNamed(RouteNames.stampsHistoryPage);
  }

  /// 12. Goto Page TNC Us
  static void showStampsEearned(BuildContext context) {
    ResponsiveDialog.sheetOrDialog(context, child: Text("Show Stamps Earned"));
  }

  /// 13. Goto Page TNC Us
  static void showVoucherDetail(BuildContext context) {
    ResponsiveDialog.sheetOrDialog(context, child: Text("Show Detail Voucher"));
  }

  /// 14. Get List Voucher
  static Future<void> getVouchers(BuildContext context) async {
    final bloc = context.read<AccountBloc>();
    final event = AccountEvent.vouchers();

    bloc.add(event);

    await bloc.stream.firstWhere(
      (s) =>
          s.event == event.runtimeType &&
          (s.respon == Respons.success || s.respon == Respons.failure),
    );
  }

  /// 15. Get List History Stamps
  static Future<void> historyStamps(
    BuildContext context, {
    LoadListData? param,
  }) async {
    final bloc = context.read<AccountBloc>();
    final event = AccountEvent.stampsHistory(param: param ?? LoadListData());

    bloc.add(event);

    await bloc.stream.firstWhere(
      (s) =>
          s.event == event.runtimeType &&
          (s.respon == Respons.success || s.respon == Respons.failure),
    );
  }

  /// 16. Get About Us
  static FutureOr<void> getAboutUs(BuildContext context) async {
    context.read<AccountBloc>().add(AccountEvent.aboutUs());
  }

  /// 17. Get Tnc
  static FutureOr<void> getTnc(BuildContext context) async {
    context.read<AccountBloc>().add(AccountEvent.tnc());
  }

  /// 18. Get Faq
  static FutureOr<void> getFaq(BuildContext context) async {
    context.read<AccountBloc>().add(AccountEvent.faq());
  }

  /// 19. Get Data Profile
  static Future<void> generateCode(BuildContext context) async {
    final _bloc = context.read<ProfileBloc>();
    final _genCodeEventType = ProfileEvent.genCode().runtimeType;

    _bloc.add(ProfileEvent.genCode());

    /// Wait for this specific genCode call to actually resolve (not some
    /// other concurrent ProfileBloc event sharing the same `respon` field)
    /// so [codeExpireDuration] below reflects the *new* code's expiry,
    /// not the one that just expired.
    await _bloc.stream.firstWhere(
      (s) =>
          s.event == _genCodeEventType &&
          (s.respon == Respons.success || s.respon == Respons.failure),
    );

    _nextCodeRefreshAt = DateTime.now().add(
      Duration(minutes: codeExpireDuration),
    );
  }
}
