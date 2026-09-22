part of 'drawer_widgets.dart';

class DrawerHeaderx extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final bool showTitle;
  final String? title1;
  final String? title2;
  final bool mini;

  const DrawerHeaderx({
    Key? key,
    this.margin,
    this.showTitle = false,
    this.title1,
    this.title2,
    required this.mini,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: Responsive.isPhoneLandscape(context) ? 50 : 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          /// Logo
          Container(
            alignment: Alignment.center,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: AppTheme.surfaceContainerLow(context),
              borderRadius: BorderRadius.circular(16),
            ),
            child: mini || Responsive.isPhoneLandscape(context)
                ? _smallLogo(context)
                : _bigLogo(context),
          ),

          /// Company Name
          Visibility(
            visible: showTitle && !mini,
            child: Container(
              margin: EdgeInsets.only(top: 8),
              child: Flexible(child: Text(title1 ?? "Title")),
            ),
          ),
        ],
      ),
    );
  }

  Image _bigLogo(BuildContext context) {
    return Image.asset(
      Assets.icLogoGreen,
      fit: BoxFit.contain,
      height: Responsive.isPhoneLandscape(context) ? 50 : 140,
      width: Responsive.isPhoneLandscape(context) ? 50 : 100,
    );
  }

  Image _smallLogo(BuildContext context) {
    return Image.asset(
      Assets.icLogoGreen,
      fit: BoxFit.contain,
      height: 80,
      width: 50,
    );
  }
}
