part of 'responsive_widget_feat.dart';

class ResponsiveRouters extends StatelessWidget {
  final Widget child;

  const ResponsiveRouters({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    /// Current Locations
    final _location = GoRouterSingleton.shared.getCurrentLocation();
    final _initialLocation = "/";
    final _noInternet = "/${RouteNames.noInternet}";
    final _welcome = "/${RouteNames.welcome}";

    final _stayOnTop =
        (_location == _initialLocation ||
        _noInternet == _location ||
        _welcome == _location);

    return Stack(
      children: [
        /// MARK: Responsive Root Page
        _stayOnTop ? child : ResponsiveRootPage(child: child),

        /// Loading Page
        ValueListenableBuilder<bool>(
          valueListenable: getIt<LoadingHelper>().isLoading,
          builder: (context, value, child) {
            return Visibility(
              visible: value,
              child: LoadingWidget(
                isOverlay: true,
                tipe: 1,
                color: Colors.white,
                logo: ImageAssets(image: Assets.icLogoWhite),
              ),
            );
          },
        ),
      ],
    );
  }
}
