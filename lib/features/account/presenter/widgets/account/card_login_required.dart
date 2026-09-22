part of '../widgets.dart';

class CardLoginRequired extends StatelessWidget {
  const CardLoginRequired({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCustom(
      isShadow: true,
      alignment: Alignment.center,
      color: AppTheme.surface(context),
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: .min,
        spacing: 16,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    // color: AppColors.primary,
                    // borderRadius: BorderRadius.circular(16),
                    // border: Border.all(
                    //   width: 2,
                    //   strokeAlign: BorderSide.strokeAlignOutside,
                    //   color: AppColors.primary,
                    // ),
                    image: DecorationImage(image: AssetImage(Assets.icMaskot1)),
                  ),
                ),

                Flexible(
                  child: Text(
                    LocaleKeys.akun_login_required_title.tr(),
                    style: AppTextStyles.titleBig2,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          Text(
            LocaleKeys.akun_login_required_desc.tr(),
            style: AppTextStyles.subtitle.copyWith(
              color: AppTheme.onSurfaceVariant(context),
            ),
            textAlign: TextAlign.center,
          ),
          Buttons(
            rounded: 28,
            isBorder: false,
            bgColor: AppTheme.primary(context),
            width: 191,
            child: Text(
              LocaleKeys.button_login.tr(),
              style: AppTextStyles.buttonBig.copyWith(color: Colors.white),
            ),
            onTap: () => AuthFlows.goToWelcomePage(context),
          ),
        ],
      ),
    );
  }
}
