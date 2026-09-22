part of 'asset_widgets.dart';

class LogoAppsPage extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const LogoAppsPage({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.only(bottom: 24),
      child: Image.asset(
        AppTheme.isDark(context) ? Assets.icLogoBlack : Assets.icLogoWhite,
        height: 265,
        width: 265,
        fit: BoxFit.contain,
        // colorBlendMode: BlendMode.saturation,
      ),
    );
  }
}
