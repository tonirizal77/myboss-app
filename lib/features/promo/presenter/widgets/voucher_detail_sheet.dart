part of 'widgets.dart';

/// Voucher details: the coupon, then its terms. Sheet on phones, dialog on
/// tablet / desktop.
class VoucherDetailSheet {
  VoucherDetailSheet._();

  static Future<void> show(BuildContext context, Voucher voucher) {
    return MyBossBottomSheet.adaptive<void>(
      context,
      builder: (_) => _VoucherDetailBody(voucher: voucher),
    );
  }
}

class _VoucherDetailBody extends StatelessWidget {
  const _VoucherDetailBody({required this.voucher});

  final Voucher voucher;

  @override
  Widget build(BuildContext context) {
    // Dialogs keep room on top for the close button.
    final top = MediaQuery.sizeOf(context).width < 600 ? 16.0 : 64.0;

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(24, top, 24, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Already open: tapping the coupon again does nothing.
          VoucherTicket(voucher: voucher, onTap: () {}),
          if (voucher.terms.isNotEmpty) ...[
            const SizedBox(height: 24),
            Text(
              LocaleKeys.promo_terms.tr(),
              style: MyBossTextStyles.subtitleBig2.copyWith(
                color: MyBossColors.onSurface,
              ),
            ),
            const SizedBox(height: 12),
            for (final (i, t) in voucher.terms.indexed)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24,
                      child: Text(
                        '${i + 1}.',
                        style: MyBossTextStyles.bodyBig2.copyWith(
                          color: MyBossColors.onSurfaceVariant,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        t,
                        style: MyBossTextStyles.bodyBig2.copyWith(
                          color: MyBossColors.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ],
      ),
    );
  }
}
