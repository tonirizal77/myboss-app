part of '../widgets.dart';

/// Signed-in Home content (Figma `Home Signed-in`): member hero, brands,
/// popular products and the points rewards panel with the balance + Redeem.
/// Content comes from [GuestHomeCubit] (static until the API exists), the
/// balance from [PointsCubit].
class SignedInHomeView extends StatefulWidget {
  const SignedInHomeView({super.key});

  @override
  State<SignedInHomeView> createState() => _SignedInHomeViewState();
}

class _SignedInHomeViewState extends State<SignedInHomeView> {
  @override
  void initState() {
    super.initState();
    context.read<GuestHomeCubit>().load();
    context.read<PointsCubit>().load();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GuestHomeCubit, GuestHomeState>(
      builder: (context, state) {
        final data = state.data;

        return Column(
          children: [
            // Deletion pending: tell the user and link to the status page.
            ValueListenableBuilder<bool>(
              valueListenable: DeleteAccountLocalState.isPendingNotifier,
              builder: (context, isPending, _) => isPending
                  ? const DeleteAccountPendingCard()
                  : const SizedBox.shrink(),
            ),
            MemberHero(rewards: data.rewards),
            const HomeSectionDivider(),
            if (data.brands.isNotEmpty)
              GuestBrands(brands: data.brands, categories: data.categoryCount),
            if (data.catalog.isNotEmpty)
              GuestCatalog(
                items: data.catalog,
                total: data.productCount,
                title: LocaleKeys.home_member_popular_title.tr(),
              ),
            if (data.rewards.isNotEmpty)
              GuestRewards(
                rewards: data.rewards,
                footer: const _RedeemFooter(),
              ),
            // Room for the bottom nav, in the section background.
            Container(height: 80, color: MyBossColors.surfaceContainerLowest),
          ],
        );
      },
    );
  }
}

class _RedeemFooter extends StatelessWidget {
  const _RedeemFooter();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<PointsCubit, PointsState>(
          buildWhen: (a, b) => a.summary != b.summary,
          builder: (context, state) => MemberPointsText(
            summary: state.summary,
            align: CrossAxisAlignment.center,
            size: 34,
          ),
        ),
        const SizedBox(height: 16),
        MyBossButton(
          label: LocaleKeys.home_member_redeem.tr(),
          trailing: SvgPicture.asset(
            Assets.icArrowSquareRight,
            width: 24,
            height: 24,
            colorFilter: ColorFilter.mode(
              MyBossColors.onPrimary,
              BlendMode.srcIn,
            ),
          ),
          // Promo tab (points rewards)
          onPressed: () => MainPageFlow.onChangeTab(context, 2),
        ),
      ],
    );
  }
}
