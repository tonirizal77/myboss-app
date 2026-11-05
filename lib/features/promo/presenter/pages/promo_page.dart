part of 'pages.dart';

/// Promo tab (Figma `promotions`): All / Points / Voucher tabs pinned on
/// top. All = redeem card (guest: sign-up card), Points panel and Voucher
/// panel; Points = balance + every reward; Voucher = every voucher.
class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  // Disposed by ResponsivePage (mybos-core) together with the page.
  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    if (UserFlows.isLoggedIn(context)) context.read<PointsCubit>().load();
  }

  void _toTop() {
    if (!_scroll.hasClients) return;
    _scroll.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PromoBranchSync(
      child: ResponsivePage(
        colorPage: PromoTabBar.background,
        backgroundColor: PromoTabBar.background,
        useSafeArea: true,
        useScrollView: true,
        controller: _scroll,
        appBar: PromoTabBar.appBar(context),
        onRefresh: () => context.read<PromoCubit>().retry(),
        body: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 96),
              child: BlocBuilder<UserBloc, UserState>(
                buildWhen: (a, b) => a.statusLogin != b.statusLogin,
                builder: (context, user) {
                  final isLoggedIn = user.statusLogin == Status.success;

                  return BlocConsumer<PromoCubit, PromoState>(
                    listenWhen: (a, b) => a.tab != b.tab,
                    listener: (_, _) => _toTop(),
                    builder: (context, state) => _content(state, isLoggedIn),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _content(PromoState state, bool isLoggedIn) {
    if (state.isFirstLoad) {
      return const SizedBox(height: 240, child: LoadingWidget());
    }

    // Every requested section failed and nothing cached: page-level retry.
    if (state.status == Status.failed &&
        state.content.rewards.isEmpty &&
        state.content.vouchers.isEmpty) {
      return PromoLoadError(onRetry: context.read<PromoCubit>().retry);
    }

    final content = state.content;
    final pointsFailed = content.failed.contains(PromoSection.points);
    final vouchersFailed = content.failed.contains(PromoSection.vouchers);

    return switch (state.tab) {
      PromoTab.all => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          isLoggedIn ? const PromoRedeemCard() : const PromoGuestCard(),
          // Guest: no loyalty points - the Points panel is hidden.
          if (isLoggedIn) ...[
            const SizedBox(height: 24),
            PromoPointsPanel(rewards: content.rewards, failed: pointsFailed),
          ],
          const SizedBox(height: 24),
          PromoVoucherPanel(
            vouchers: content.vouchers,
            isLoggedIn: isLoggedIn,
            failed: vouchersFailed,
          ),
        ],
      ),
      PromoTab.points => Column(
        children: [
          if (isLoggedIn) ...[
            BlocBuilder<PointsCubit, PointsState>(
              buildWhen: (a, b) => a.summary != b.summary,
              builder: (context, points) => MemberPointsText(
                summary: points.summary,
                align: CrossAxisAlignment.center,
              ),
            ),
            const SizedBox(height: 24),
            pointsFailed
                ? PromoLoadError(
                    compact: true,
                    onRetry: context.read<PromoCubit>().retry,
                  )
                : RewardGrid(rewards: content.rewards),
          ] else
            // Guest: sign-up pitch only, the reward list is never loaded.
            PromoHeading(
              title: LocaleKeys.promo_points_title.tr(),
              subtitle: LocaleKeys.promo_points_guest.tr(),
            ),
        ],
      ),
      PromoTab.voucher => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PromoHeading(
            title: LocaleKeys.promo_voucher_title.tr(),
            subtitle: isLoggedIn
                ? LocaleKeys.promo_voucher_count.tr(
                    args: ['${content.vouchers.length}'],
                  )
                : LocaleKeys.promo_voucher_guest.tr(),
          ),
          const SizedBox(height: 24),
          vouchersFailed
              ? PromoLoadError(
                  compact: true,
                  onRetry: context.read<PromoCubit>().retry,
                )
              : _VoucherList(vouchers: content.vouchers),
        ],
      ),
    };
  }
}

/// One column on phones, two on wider windows.
class _VoucherList extends StatelessWidget {
  const _VoucherList({required this.vouchers});

  final List<Voucher> vouchers;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridOrWrap<Voucher>(
      tipe: TipeView.wrapview,
      mobile: 1,
      tablet: 2,
      desktop: 2,
      spacing: 16,
      runSpacing: 16,
      padding: EdgeInsets.zero,
      paddingBody: EdgeInsets.zero,
      top: 0,
      physics: const NeverScrollableScrollPhysics(),
      isSeperator: false,
      listData: vouchers,
      child: (v) => VoucherTicket(voucher: v),
    );
  }
}
