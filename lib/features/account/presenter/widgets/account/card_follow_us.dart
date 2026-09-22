part of '../widgets.dart';

class CardFollowUs extends StatelessWidget {
  const CardFollowUs({super.key});

  @override
  Widget build(BuildContext context) {
    final _linkIG = context.read<StoreBloc>().state.store.linkInstagram ?? "";

    final _validLinkIG = _linkIG.contains('www.instagram.com') == true
        ? _linkIG
        : 'https://www.instagram.com/${_linkIG}';

    return InkWell(
      onTap: () => OpenLinksHelper.openLinks(context, link: _validLinkIG),
      child: CardCustom(
        isShadow: true,
        alignment: Alignment.center,
        color: AppTheme.surface(context),
        padding: EdgeInsets.all(Responsive.isMobile(context) ? 24 : 8),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              LocaleKeys.akun_lets_fun.tr(),
              style: AppTextStyles.titleBig1,
              textAlign: TextAlign.center,
            ),

            //
            Text(
              LocaleKeys.akun_folow_us.tr(),
              style: AppTextStyles.titleBig1.copyWith(
                color: AppTheme.onSurfaceVariant(context),
              ),
              textAlign: TextAlign.center,
            ),

            ///
            Image.asset(Assets.menuSocial),
          ],
        ),
      ),
    );
  }
}
