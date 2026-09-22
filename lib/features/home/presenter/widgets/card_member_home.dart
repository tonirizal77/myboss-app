part of 'widgets.dart';

class CardMemberHome extends StatelessWidget {
  final String image;
  final String name;

  const CardMemberHome({
    super.key,
    this.name = "",
    this.image = Assets.icMaskot1,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final _customer = state.profile;
        final _level = _customer.level == 0 ? 1 : _customer.level;

        final _avatar = _customer.favatar;

        final _bgImage = _level == 3
            ? Assets.icBgCoolest
            : _level == 2
            ? Assets.icBgCooler
            : Assets.icBgCool;

        final _tierLabel = _level == 3
            ? LocaleKeys.home_tier_label3.tr()
            : _level == 2
            ? LocaleKeys.home_tier_label2.tr()
            : LocaleKeys.home_tier_label1.tr();

        final _tierStyle = AppTextStyles.title.copyWith(
          color: _level == 1
              ? AppColors.cool
              : _level == 2
              ? AppColors.cooler
              : AppColors.coolest,
        );

        final _iconTier = _level == 1
            ? Assets.icTierCool
            : _level == 2
            ? Assets.icTierCooler
            : Assets.icTierCoolest;

        return Stack(
          alignment: .center,
          children: [
            /// Background Image
            Container(
              width: Responsive.isMobile(context)
                  ? null
                  : Responsive.maxWidthMobile,
              height: Responsive.sizex(context, mobile: 130, tablet: 155),
              decoration: BoxDecoration(
                borderRadius: Responsive.isMobile(context)
                    ? null
                    : BorderRadius.circular(20),
                border: Border.all(
                  width: 0.5,
                  color: AppTheme.surface(context),
                ),
                image: DecorationImage(
                  image: AssetImage(_bgImage),
                  fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                    AppTheme.isDark(context)
                        ? AppTheme.primary(context).withGreen(50)
                        : AppTheme.primary(context),
                    BlendMode.overlay,
                  ),
                  invertColors: AppTheme.isDark(context) ? true : false,
                ),
              ),
            ),

            /// Content
            Container(
              alignment: .center,
              width: Responsive.maxWidthMobile,
              height: Responsive.sizex(context, mobile: 130, tablet: 155),
              padding: EdgeInsets.fromLTRB(32, 24, 32, 24),

              child: Row(
                spacing: 16,
                children: [
                  /// Left
                  CircleImage(
                    size: 80,
                    border: Border.all(color: AppColors.white, width: 2),
                    child: ImageNetwork(
                      imageUrl: _avatar,
                      width: 80,
                      radius: 40,
                      shape: BoxShape.circle,
                      onlyIcon: true,
                      boxFit: BoxFit.cover,
                    ),
                  ),

                  /// Right
                  Flexible(
                    child: Column(
                      crossAxisAlignment: .start,
                      mainAxisAlignment: .center,
                      // mainAxisSize: .min,
                      spacing: 8,
                      children: [
                        Text(
                          _customer.name,
                          style: AppTextStyles.titleBig1,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Flexible(
                              child: Text(_tierLabel, style: _tierStyle),
                            ),
                            Image.asset(_iconTier, height: 32),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
