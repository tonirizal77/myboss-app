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

  /// 5. Sign out confirmation (Figma `Sign Out Confirmation`)
  static Future<void> goToLogout(BuildContext context) async {
    final confirmed = await MyBossDialog.confirm(
      context,
      title: LocaleKeys.dialog_desc_logout.tr(),
      cancelLabel: LocaleKeys.button_back.tr(),
      confirmLabel: LocaleKeys.button_logout.tr(),
      destructive: true,
    );

    if (confirmed == true && context.mounted) {
      UserFlows.logoutUser(context);
    }
  }

  /// - Delete Account (Step 1: confirmation)
  ///
  /// The mode comes from [AppSetting.deleteAccountMode] (direct / pending /
  /// emailConfirmation, ported from hayo-app). When a request is already
  /// pending, go straight to its status page instead of letting the user
  /// file a second one.
  static void goToDeleteAccount(BuildContext context) {
    if (DeleteAccountLocalState.isPending) {
      showDeleteAccountStatus(context);
      return;
    }

    MyBossBottomSheet.adaptive<void>(
      context,
      builder: (_) => const DeleteAccountSheetContent(),
    );
  }

  /// Confirm button of the in-app (direct / pending) confirmation sheet.
  static Future<void> confirmDeleteAccount(BuildContext context) async {
    /// [AppSetting.needConfirmOTP] `false`: skip reason + OTP - close the
    /// sheet first, then delete right away.
    if (!AppSetting.needConfirmOTP) {
      context.pop();
      await submitDeleteAccountRequest(context);
      return;
    }

    await goToDeleteAccountVerifyPage(context);
  }

  /// - Delete Account Step 2 (reason + OTP page)
  ///
  /// Sends the OTP *while the confirmation sheet is still open* and only
  /// moves on when that really worked. "Already pending" goes to the status
  /// page; any other error stays on the sheet with a message.
  static Future<void> goToDeleteAccountVerifyPage(BuildContext context) async {
    getIt<LoadingHelper>().turnOnLoading();

    await VerifyFlows.verifyDeleteAccount(context, phone: profile.phone);

    if (!context.mounted) return;

    final _bloc = getIt<VerifyBloc>();

    await VerifyFlows.getOtpCode(context);

    final _state = await _bloc.stream.firstWhere(
      (s) =>
          s.statusGetOtp == Status.success || s.statusGetOtp == Status.failed,
    );

    getIt<LoadingHelper>().turnOffLoading();

    if (!context.mounted) return;

    if (_state.statusGetOtp == Status.success) {
      context.pop();
      context.pushNamed(RouteNames.deleteAccountVerifyPage);
      return;
    }

    if (_isDeleteRequestAlreadyPendingError(_state.errorMessage)) {
      /// The server already has a pending request but this device never
      /// stored the flag - set it (default estimate: now + 30 days) so the
      /// redirect guard lets the status page open.
      await DeleteAccountLocalState.markPending();

      if (!context.mounted) return;

      context.pop();
      showDeleteAccountStatus(context);
      return;
    }

    getIt<FlushbarHelper>().showErrorFlushbar(
      context: context,
      message: _state.errorMessage,
    );
  }

  /// Best-effort match for the backend "deletion already pending" rejection
  /// on send-otp - the API has no machine-readable code for it, only a
  /// human-readable (locale dependent) message.
  static bool _isDeleteRequestAlreadyPendingError(String errorMessage) =>
      errorMessage.toLowerCase().contains('pending');

  /// Keeps the loading spinner up for at least [_minLoadingDuration] so a
  /// near-instant response does not just flash it.
  static const _minLoadingDuration = Duration(milliseconds: 1500);

  static Future<T> _withMinLoadingDuration<T>(Future<T> future) async {
    final _start = DateTime.now();
    final _result = await future;

    final _remaining = _minLoadingDuration - DateTime.now().difference(_start);
    if (_remaining > Duration.zero) await Future.delayed(_remaining);

    return _result;
  }

  /// - Delete Account Step 3 - after OTP + reason succeeded (or right after
  /// the sheet when [AppSetting.needConfirmOTP] is `false`):
  /// - [DeleteAccountMode.direct]: really delete (DELETE
  ///   [Endpoints.deleteAccountReal]); on success the session is cleared and
  ///   the user lands in guest mode (or on the welcome page).
  /// - [DeleteAccountMode.pending]: never calls the delete endpoint - marks
  ///   the account pending locally and opens [DeleteAccountStatusSheet]
  ///   (preview the grace-period UI without deleting a test account).
  static Future<void> submitDeleteAccountRequest(BuildContext context) async {
    if (AppSetting.deleteAccountMode == DeleteAccountMode.pending) {
      getIt<LoadingHelper>().turnOnLoading();

      await _withMinLoadingDuration(DeleteAccountLocalState.markPending());

      getIt<LoadingHelper>().turnOffLoading();

      if (!context.mounted) return;

      MyBossToast.success(context, LocaleKeys.akun_delete_request_success.tr());

      /// Back on the Account tab (close the OTP page, if any), then the
      /// status sheet (Figma `Deletion Request Status`).
      if (Navigator.of(context).canPop()) context.pop();
      showDeleteAccountStatus(context);
      return;
    }

    final _bloc = getIt<UserBloc>();

    _bloc.add(const UserEvent.userDeleteAccount());

    getIt<LoadingHelper>().turnOnLoading();

    final _state = await _withMinLoadingDuration(
      _bloc.stream.firstWhere(
        (s) =>
            s.statusDeleteAccount == Status.success ||
            s.statusDeleteAccount == Status.failed,
      ),
    );

    getIt<LoadingHelper>().turnOffLoading();

    if (!context.mounted) return;

    if (_state.statusDeleteAccount == Status.success) {
      if (AppSetting.isGuestModeEnabled) {
        /// Guest mode: stay browsable on the Main Page.
        context.read<ResponsiveCubit>().swithMenuDrawer(true);
        MainPageFlow.goToMainPage(context);
      } else {
        AuthFlows.goToWelcomePage(context);
      }

      MyBossToast.success(context, LocaleKeys.akun_delete_account_success.tr());
      return;
    }

    /// OTP + reason already succeeded, which creates the pending row on
    /// the server - only the immediate delete failed. Mark pending locally
    /// so the account shows as pending right away.
    if (AppSetting.needConfirmOTP) await DeleteAccountLocalState.markPending();

    if (!context.mounted) return;

    await getIt<FlushbarHelper>()
        .showErrorFlushbar(context: context, message: _state.errorMessage)
        .whenComplete(() {
          if (context.mounted) MainPageFlow.goToMainPage(context, index: 3);
        });
  }

  /// - Deletion request status (Figma `Deletion Request Status`): sheet on
  /// phones, dialog on wider windows.
  static Future<void> showDeleteAccountStatus(BuildContext context) {
    return MyBossBottomSheet.adaptive<void>(
      context,
      builder: (_) => const DeleteAccountStatusSheet(),
    );
  }

  /// - Cancel a pending deletion request (confirm first). Returns `true`
  /// when it was cancelled.
  static Future<bool> cancelDeleteAccount(BuildContext context) async {
    final confirmed = await MyBossDialog.confirm(
      context,
      title: LocaleKeys.akun_delete_cancel_confirm_title.tr(),
      cancelLabel: LocaleKeys.akun_delete_cancel_confirm_no.tr(),
      confirmLabel: LocaleKeys.akun_delete_cancel_confirm_yes.tr(),
    );

    if (confirmed != true || !context.mounted) return false;

    final _bloc = getIt<UserBloc>();
    _bloc.add(const UserEvent.userCancelDeleteAccount());

    getIt<LoadingHelper>().turnOnLoading();

    final _state = await _withMinLoadingDuration(
      _bloc.stream.firstWhere(
        (s) =>
            s.statusCancelDeleteAccount == Status.success ||
            s.statusCancelDeleteAccount == Status.failed,
      ),
    );

    getIt<LoadingHelper>().turnOffLoading();

    if (!context.mounted) return false;

    if (_state.statusCancelDeleteAccount == Status.failed) {
      getIt<FlushbarHelper>().showErrorFlushbar(
        context: context,
        message: _state.errorMessage,
      );
      return false;
    }

    MyBossToast.success(context, LocaleKeys.akun_delete_cancel_success.tr());
    return true;
  }

  /// - Delete-account reasons, loaded when the reason + OTP page opens.
  static Future<void> getReasons(BuildContext context) async {
    final bloc = context.read<AccountBloc>();
    final event = AccountEvent.reasons();

    bloc.add(event);

    await bloc.stream.firstWhere(
      (s) =>
          s.event == event.runtimeType &&
          (s.respon == Respons.success || s.respon == Respons.failure),
    );
  }

  /// 6. Goto Page Verify Change Phone Number
  static Future<void> showContactUs(BuildContext context) async {
    final _store = context.read<StoreBloc>().state.store;

    final _messageWa = "Halo MyBoss";

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
      title: Text("Contact Us", style: MyBossTextStyles.title),
      // styleTitle: MyBossTextStyles.title,
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
          style: MyBossTextStyles.subtitle,
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
  static void goToPointsPage(BuildContext context) {
    context.pushNamed(RouteNames.pointsPage);
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
