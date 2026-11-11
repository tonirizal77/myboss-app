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
  /// Used to jump back to the top when the tab changes. The back-to-top
  /// button is handled by ResponsivePage itself.
  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    // Points balance: `balance_points` of /profile/info.
    if (UserFlows.isLoggedIn(context)) AccountFlows.getProfile(context);
  }

  @override
  void dispose() {
    // ResponsivePage only disposes the controller it creates itself.
    _scroll.dispose();
    super.dispose();
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
            const ProfilePointsText(align: CrossAxisAlignment.center),
            const SizedBox(height: 24),
            pointsFailed
                ? PromoLoadError(
                    compact: true,
                    onRetry: context.read<PromoCubit>().retry,
                  )
                : content.rewards.isEmpty
                ? PromoEmptyState.points(
                    onRefresh: context.read<PromoCubit>().retry,
                  )
                : RewardGrid(rewards: content.rewards),
          ] else ...[
            // Guest: sign-up pitch + empty card, the reward list is never
            // loaded for guests.
            PromoHeading(
              title: LocaleKeys.promo_points_title.tr(),
              subtitle: LocaleKeys.promo_points_guest.tr(),
            ),
            const SizedBox(height: 24),
            PromoEmptyState.points(onRefresh: context.read<PromoCubit>().retry),
          ],
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
              : content.vouchers.isEmpty
              ? PromoEmptyState.vouchers(
                  onRefresh: context.read<PromoCubit>().retry,
                )
              : VoucherList(vouchers: content.vouchers),
        ],
      ),
    };
  }
}
