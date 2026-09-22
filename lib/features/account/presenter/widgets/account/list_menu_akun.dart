part of '../widgets.dart';

class ListMenuAkun extends StatelessWidget {
  const ListMenuAkun({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) =>
          previous.statusLogin != current.statusLogin,
      builder: (context, state) {
        final _isLoggedIn = state.statusLogin == Status.success;

        return CardCustom(
          radius: 24,
          isShadow: true,
          color: AppTheme.surface(context),
          padding: EdgeInsets.all(8),
          child: Column(children: _listMenuAkun(context, _isLoggedIn)),
        );
      },
    );
  }

  List<Widget> _listMenuAkun(BuildContext context, bool isLoggedIn) {
    return [
      Flex(
        direction: Responsive.isMobile(context)
            ? Axis.vertical
            : Axis.horizontal,
        mainAxisSize: .min,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: .min,
              children: [
                ButtonMenuAkun(
                  icon: Image.asset(
                    Assets.menuAboutUs,
                    color: AppTheme.onSurface(context),
                  ),
                  title: Text(
                    LocaleKeys.akun_about_us.tr(),
                    style: AppTextStyles.subtitle,
                  ),
                  borderRadius: Responsive.isMobile(context)
                      ? BorderRadius.vertical(top: Radius.circular(20))
                      : BorderRadius.only(topLeft: Radius.circular(20)),
                  onTap: () {
                    AccountFlows.goToAboutUsPage(context);
                  },
                ),

                ButtonMenuAkun(
                  icon: Image.asset(
                    Assets.menufaq,
                    color: AppTheme.onSurface(context),
                  ),
                  // height: 80,
                  title: Text(
                    LocaleKeys.akun_faq.tr(),
                    style: AppTextStyles.subtitle.copyWith(height: 1),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  borderRadius: isLoggedIn
                      ? null
                      : Responsive.isMobile(context)
                      ? null
                      : BorderRadius.only(bottomLeft: Radius.circular(20)),
                  onTap: () {
                    AccountFlows.goToFaqPage(context);
                  },
                ),
              ],
            ),
          ),

          Flexible(
            child: Column(
              mainAxisSize: .min,
              children: [
                ButtonMenuAkun(
                  icon: Image.asset(
                    Assets.menuTerms,
                    color: AppTheme.onSurface(context),
                  ),
                  title: Text(
                    // "Syarat dan Ketentuan",
                    LocaleKeys.akun_tnc.tr(),
                    style: AppTextStyles.subtitle,
                  ),
                  borderRadius: Responsive.isMobile(context)
                      ? null
                      : BorderRadius.only(topRight: Radius.circular(20)),
                  onTap: () {
                    AccountFlows.goToTncPage(context);
                  },
                ),

                ButtonMenuAkun(
                  icon: Image.asset(
                    Assets.menuContactUs,
                    color: AppTheme.onSurface(context),
                  ),
                  title: Text(
                    LocaleKeys.akun_contact_us.tr(),
                    style: AppTextStyles.subtitle,
                  ),
                  borderRadius: isLoggedIn
                      ? null
                      : Responsive.isMobile(context)
                      ? BorderRadius.vertical(bottom: Radius.circular(20))
                      : BorderRadius.only(bottomRight: Radius.circular(20)),
                  onTap: () {
                    AccountFlows.showContactUs(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),

      if (isLoggedIn) ...[
        Divider(indent: 8, endIndent: 8),

        /// Logout
        ButtonMenuAkun(
          icon: Image.asset(Assets.menuLogout),
          title: Text(
            LocaleKeys.akun_logout.tr(),
            style: AppTextStyles.subtitle,
          ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          onTap: () => AccountFlows.goToLogout(context),
        ),
      ],
    ];
  }
}
