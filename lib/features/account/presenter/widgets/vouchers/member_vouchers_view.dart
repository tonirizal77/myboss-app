part of '../widgets.dart';

/// Active / Used tabs (Figma: selected = brand text, tinted fill and an
/// underline).
class MemberVoucherTabs extends StatelessWidget {
  const MemberVoucherTabs({super.key, required this.selected});

  final VoucherStatus selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      color: MyBossColors.surface,
      child: Row(
        children: [
          for (final status in VoucherStatus.values)
            Expanded(
              child: _VoucherTab(
                label: switch (status) {
                  VoucherStatus.active => LocaleKeys.akun_voucher_tab_active,
                  VoucherStatus.used => LocaleKeys.akun_voucher_tab_used,
                }.tr(),
                selected: status == selected,
                onTap: () =>
                    context.read<MemberVoucherCubit>().selectTab(status),
              ),
            ),
        ],
      ),
    );
  }
}

class _VoucherTab extends StatelessWidget {
  const _VoucherTab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final brand = MyBossColors.primary;

    return Material(
      color: selected ? brand.withValues(alpha: 0.08) : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Center(
              child: Text(
                label,
                style: MyBossTextStyles.subtitleBig2.copyWith(
                  color: selected ? brand : MyBossColors.onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (selected)
              Positioned(
                left: 6,
                right: 6,
                bottom: 0,
                child: Container(height: 1, color: MyBossColors.onSurface),
              ),
          ],
        ),
      ),
    );
  }
}

/// One tab of the member's vouchers, without its own scroll view: loading,
/// error, empty card or tickets + "Load more".
class MemberVoucherContent extends StatelessWidget {
  const MemberVoucherContent({
    super.key,
    required this.status,
    required this.list,
  });

  final VoucherStatus status;
  final VoucherListState list;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MemberVoucherCubit>();
    Future<void> refresh() => cubit.load(status);

    if (list.items.isEmpty &&
        (list.status == Status.loading || list.status == Status.initial)) {
      return const SizedBox(height: 240, child: LoadingWidget());
    }
    if (list.status == Status.failed && list.items.isEmpty) {
      return PromoLoadError(onRetry: refresh);
    }
    if (list.items.isEmpty) {
      return PromoEmptyState(
        key: ValueKey('voucher_empty_${status.name}'),
        message: switch (status) {
          VoucherStatus.active => LocaleKeys.akun_voucher_empty,
          VoucherStatus.used => LocaleKeys.akun_voucher_used_empty,
        }.tr(),
        onRefresh: refresh,
      );
    }

    return Column(
      children: [
        VoucherList(vouchers: list.items),
        if (list.hasMore) ...[
          const SizedBox(height: 24),
          MyBossButton(
            key: const ValueKey('voucher_load_more'),
            label: LocaleKeys.akun_voucher_load_more.tr(),
            role: MyBossButtonRole.secondary,
            loading: list.loadingMore,
            onPressed: () => cubit.loadMore(status),
          ),
        ],
      ],
    );
  }
}
