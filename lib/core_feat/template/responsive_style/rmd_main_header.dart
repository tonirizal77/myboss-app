part of 'responsive_style_feat.dart';

class RmdMainHeader extends StatelessWidget {
  const RmdMainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final _shadowStyle = AppTheme.isDark(context)
            ? shadowStyleDart
            : shadowStyleLight;

        return CardCustom(
          height: 80,
          padding: EdgeInsets.only(left: 16, right: 16),
          color: AppTheme.surface(
            context,
          ), // state.bgColorHeader ?? AppTheme.surface(context),
          isShadow: state.isShadowHeader,
          radius: state.radiusHeader,
          shadow: _shadowStyle,
          alignment: Alignment.center,
          child: const RmdMainHeaderChild(),
        );
      },
    );
  }
}
