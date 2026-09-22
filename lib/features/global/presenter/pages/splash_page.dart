part of 'pages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    ConfigServer.resetDioBaseUrl();

    /// Do Something after 3 seconds
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await AppSetting.initStyleApp(context);

      /// Override Set Masking
      AppSetting.maskContact(true);

      /// Initialize Masking
      AppSetting.initMaskContact();

      await Future.delayed(const Duration(seconds: 3), () async {
        // await UserFlows.cekAutenticate(context);

        /// Ensure store data (mobileSetting / isGuestMode) is fetched
        /// before the guest-mode gate in [AuthFlowsListen] runs - otherwise
        /// it evaluates against the default (empty) [StoreState].
        await StoreFlows.ensureStoreLoaded(context);

        if (!context.mounted) return;

        await AuthFlows.checkAuthClient(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary(context),
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(child: LogoAppsPage()),

          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return SwitchChildWidgets(
                tipe:
                    state.status == Status.loading ||
                        state.status == Status.initial
                    ? SwitchWidgets.child1
                    : SwitchWidgets.child2,
                child1: LoadingPage(
                  shape: BoxShape.rectangle,
                  tipe: 4,
                  color: Colors.white,
                  absolute: false,
                ),
                child2:
                    state.authStatus == AuthStatus.unknown &&
                        state.status == Status.failed
                    ? _showErrorBox(state, context)
                    : SizedBox.shrink(),
              );
            },
          ),
        ],
      ),
    );
  }

  CardEmptyPage _showErrorBox(AuthState state, BuildContext context) {
    return CardEmptyPage(
      margin: EdgeInsets.all(16),
      bgColor: AppColors.warning,
      child: Column(
        mainAxisSize: .min,
        spacing: 16,
        children: [
          Text(
            LocaleKeys.global_server_error.tr(),
            style: AppTextStyles.title.copyWith(color: Colors.white),
          ),

          Text(
            state.errorMessage,
            style: AppTextStyles.bodyMedium.copyWith(color: Colors.yellow),
          ),

          ButtonsWidget(
            height: 48,
            color: AppTheme.surface(context),
            onTap: () {
              AppSetting.recheckAuth(false);
              UserFlows.goToMainPage(context);
            },
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              LocaleKeys.global_ignore.tr(),
              style: AppTextStyles.button.copyWith(
                color: AppTheme.onSurface(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
