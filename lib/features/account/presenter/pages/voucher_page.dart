part of 'pages.dart';

/// Vouchers page (Figma `Vouchers`): the member's own vouchers from
/// `GET /profile/discount-vouchers`, Active (`is_used=false`) and Used
/// (`is_used=true`) tabs, paged with "Load more". Same list as the Promo
/// Voucher tab.
class VoucherPage extends StatefulWidget {
  const VoucherPage({super.key});

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  @override
  void initState() {
    super.initState();
    // Vouchers belong to the branch selected in the header.
    context.read<MemberVoucherCubit>().open(
      storeDomain: context.read<StoreBranchCubit>().state.selected?.urlId ?? '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBarCustom: MyBossHeader(
        title: LocaleKeys.akun_voucher_title.tr(),
        onClose: () => context.pop(),
      ),
      backgroundColor: MyBossColors.surfaceContainerLow,
      alignment: Alignment.topCenter,
      useSafeArea: true,
      // Header height only: the status bar is already handled by useSafeArea.
      top: 56,
      body: BlocBuilder<MemberVoucherCubit, MemberVoucherState>(
        builder: (context, state) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MemberVoucherTabs(selected: state.tab),
            Flexible(
              child: RefreshIndicator(
                onRefresh: () =>
                    context.read<MemberVoucherCubit>().load(state.tab),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                  child: MemberVoucherContent(
                    key: ValueKey(state.tab),
                    status: state.tab,
                    list: state.of(state.tab),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
