part of 'responsive_widget_feat.dart';

/// App-specific root shell built on top of mobile_app_core's generic
/// [Responsive] / [ResponsiveSafeArea] / [RmdTabletView]. Stays in
/// core_feat (not mobile_app_core) because it hardcodes this app's own
/// [RmdLeftSide] and [RmdMainHeader] as the tablet shell's leftSide/header,
/// which in turn depend on app-specific state (UserBloc, ProfileBloc,
/// MainPageFlow, concrete routes). Moving it to core would drag those
/// app-specific widgets along and break core's reusability across apps.
class ResponsiveRootPage extends StatelessWidget {
  final Widget child;

  const ResponsiveRootPage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppTheme.primary(context),
      body: Responsive(
        mobile: ResponsiveSafeArea(
          top: false,
          bottom: SyncUI.isAndroid,
          child: child,
        ),
        tablet: ResponsiveSafeArea(
          top: true,
          bottom: false,
          child: RmdTabletView(child: child),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
