part of 'flows.dart';

class MainPageFlow {
  MainPageFlow._();

  static void goToMainPage(
    BuildContext context, {
    int index = 0,
    bool isFirst = false, // Not Login
  }) {
    final _oldIndex = context.read<BottomNavCubit>().state.currentIndex;

    PrintHelper.printError(
      "__gotoMainPage index: prev:$_oldIndex - next:$index - isFirst: $isFirst",
    );

    context.read<BottomNavCubit>().changeTab(index);

    /// Initialize Main Page Goto Main Page
    if (isFirst) {
      context.goNamed(RouteNames.mainPageFirst);
    } else {
      context.goNamed(RouteNames.mainPage);
    }
  }

  static void onChangeTab(BuildContext context, int index) {
    final _oldIndex = context.read<BottomNavCubit>().state.currentIndex;
    final _location = GoRouterSingleton.shared.getCurrentLocation();

    PrintHelper.printError(
      "__onChangeTAB index: prev:$_oldIndex - next:$index - $_location",
    );

    if (_location != RouteNames.mainPage ||
        _location != RouteNames.mainPageFirst) {
      GoRouterSingleton.shared.popToRoot(context: context);
    }

    /// Move Tab Page
    context.read<BottomNavCubit>().changeTab(index);
  }

  /// Show Barcode User Profile
  static FutureOr<void> showBarcodeMember(BuildContext context) async {
    if (!UserFlows.isLoggedIn(context)) {
      /// Guest has no profile/token to generate a barcode for -
      /// show the same login prompt used on Home instead of
      /// hitting the generate-code API as a guest.
      await ResponsiveDialog.sheetOrDialog(
        context,
        bgColor: AppTheme.surface(context),
        colorFrame: AppTheme.surface(context),
        colorBody: Colors.transparent,
        child: const CardLoginRequired(),
      );
      return;
    }

    /// Only fetch a fresh code if the previous one has already expired -
    /// if the sheet was closed and reopened before its countdown
    /// finished, [CardMemberBarcode] resumes the existing code/timer
    /// instead of hitting the generate-code API again.
    if (!AccountFlows.hasActiveCode) {
      AccountFlows.resetCodeRefreshSession();
      await AccountFlows.generateCode(context);
    }

    final _level = context.read<ProfileBloc>().state.profile.level;

    final int _tiers = _level == 0 ? 1 : _level;

    final _bgColor = _tiers == 3
        ? AppColors.coolest
        : _tiers == 2
        ? AppColors.cooler
        : AppTheme.primary(context);

    await ResponsiveDialog.sheetOrDialog(
      context,
      bgColor: _bgColor,
      colorFrame: _bgColor,
      colorBody: Colors.transparent,
      child: const CardMemberBarcode(),
    );
  }

  /// 1. Initialize Member Barcode Page
  ///
  /// Used in [CardMemberBarcode]
  static void turnOnPrevent(BuildContext context) {
    /// Prevent screenshot
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ScreenProtector.preventScreenshotOn();
      await ScreenProtector.protectDataLeakageOn();
    });
  }

  /// 2. Dispose Member Barcode Page
  ///
  /// Used in [CardMemberBarcode]
  static void turnOffPrevent() {
    /// Turn off prevent screen shot
    ScreenProtector.preventScreenshotOff();
    ScreenProtector.protectDataLeakageOff();
  }
}
