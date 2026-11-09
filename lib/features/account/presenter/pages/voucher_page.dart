part of 'pages.dart';

/// Vouchers of the selected branch (`GET /promotion/discount-vouchers/list`,
/// PRD-011) - the same list as the Promo Voucher tab, from [PromoCubit].
///
/// TODO(backend): switch to the member's own vouchers once the API has an
/// endpoint for them.
class VoucherPage extends StatelessWidget {
  const VoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PromoBranchSync(
      child: ResponsivePage(
        appBar: AppBarCustom(
          isBlur: false,
          title: LocaleKeys.akun_voucher_title.tr(),
          onClose: () => context.pop(),
        ),
        useSafeArea: true,
        alignment: Alignment.topCenter,
        onRefresh: () => context.read<PromoCubit>().retry(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: BlocBuilder<PromoCubit, PromoState>(
            builder: (context, state) => _content(context, state),
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context, PromoState state) {
    final vouchers = state.content.vouchers;
    final retry = context.read<PromoCubit>().retry;

    if (state.status == Status.loading && vouchers.isEmpty) {
      return const SizedBox(height: 240, child: LoadingWidget());
    }

    final failed =
        state.content.failed.contains(PromoSection.vouchers) ||
        (state.status == Status.failed && vouchers.isEmpty);

    if (failed) return PromoLoadError(onRetry: retry);
    if (vouchers.isEmpty) return PromoEmptyState.vouchers(onRefresh: retry);

    return VoucherList(vouchers: vouchers);
  }
}
