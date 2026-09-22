part of '../widgets.dart';

class VoucherBottomsheet extends StatelessWidget {
  final VoucherModel data;
  final double height;

  const VoucherBottomsheet({
    super.key,
    required this.data,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    String _efectiveDateLabel = "";
    if (data.expiryDate.isNotEmpty) {
      /// Label Berlaku Hingga
      _efectiveDateLabel = LocaleKeys.voucher_label_valid2.tr(
        args: [
          '${DateTime.tryParse(data.expiryDate)?.shortDate ?? DateTime.now().shortDate}',
        ],
      );
    } else {
      _efectiveDateLabel = LocaleKeys.voucher_label_valid1.tr();
    }

    return Column(
      crossAxisAlignment: .start,
      spacing: 24,
      mainAxisSize: .min,
      children: [
        /// Voucher Frame
        CardVoucher(data: data, height: height),

        Container(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                LocaleKeys.voucher_label_desc.tr(),
                style: AppTextStyles.subtitleBig2,
              ),
              SizedBox(height: 4),
              Text(
                "1. ${(data.discountRate * 100).floor()} % ${LocaleKeys.voucher_label_disc.tr()}",
                style: AppTextStyles.body,
              ),
              Text(
                "2. ${LocaleKeys.voucher_label_max.tr(args: ['${SharedMethod.formatNumber(data.maxDiscountAmount, symbol: 'Rp ')}'])}",
                style: AppTextStyles.body,
              ),
              Text(
                "3. ${LocaleKeys.voucher_label_min.tr(args: ['${SharedMethod.formatNumber(data.minOrderAmount, symbol: 'Rp ')}'])}",
                style: AppTextStyles.body,
              ),
              Text("4. $_efectiveDateLabel", style: AppTextStyles.body),
            ],
          ),
        ),
      ],
    );
  }
}
