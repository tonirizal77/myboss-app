part of 'pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary(context),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: LogoAppsPage()),

              Buttons(
                rounded: 28,
                isBorder: false,
                bgColor: AppTheme.surface(context),
                width: 191,
                child: Text(
                  // Let's be a friends
                  LocaleKeys.global_welcome_btn.tr(),
                  style: AppTextStyles.buttonBig.copyWith(
                    color: AppTheme.onSurface(context),
                  ),
                ),
                onTap: () {
                  UserFlows.goToLoginPage(context);
                },
              ),
            ],
          ),

          SafeArea(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(top: 56, bottom: 16),
                child: Text(
                  "Myboss v.${getIt<PackageInfoHelper>().version}",
                  style: AppTextStyles.captionSmall.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
