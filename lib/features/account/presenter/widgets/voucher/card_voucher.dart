part of '../widgets.dart';

class CardVoucher extends StatelessWidget {
  final VoucherModel data;
  final double height;

  const CardVoucher({super.key, required this.data, required this.height});

  @override
  Widget build(BuildContext context) {
    /// Label Berlaku Hingga
    String _efectiveDateLabel = data.noExpiry == 1
        ? LocaleKeys.voucher_label_valid1.tr()
        : LocaleKeys.voucher_label_valid2.tr(
            args: [
              '${DateTime.tryParse(data.expiryDate)?.shortDate ?? DateTime.now().shortDate}',
            ],
          );

    return InkWell(
      onTap: () {
        // PrintHelper.inspectx(data);

        ResponsiveDialog.sheetOrDialog(
          context,
          title: Text(
            LocaleKeys.voucher_label_sheet.tr(),
            style: AppTextStyles.title,
          ),
          colorFrame: AppTheme.scaffold(context),
          colorBody: AppTheme.scaffold(context),

          child: VoucherBottomsheet(data: data, height: height),
        );
      },
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          /// Voucher Custom
          VoucherCustom(height: height),

          /// Content
          _content(context, _efectiveDateLabel),
        ],
      ),
    );
  }

  /// Content Dalam
  Container _content(BuildContext context, String _efectiveDateLabel) {
    return Container(
      constraints: BoxConstraints(maxHeight: height),
      margin: EdgeInsets.only(top: 4, bottom: 4, left: 100, right: 16),
      padding: EdgeInsets.only(top: 4, bottom: 4),
      height: height,
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .start,
        mainAxisSize: .min,
        children: [
          Text(
            "${data.title.capitalize()}",
            style: AppTextStyles.subtitleSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            "${(data.discountRate * 100).floor()}% ${LocaleKeys.voucher_label_disc.tr()}",
            style: AppTextStyles.title.copyWith(
              color: AppTheme.isDark(context)
                  ? AppColors.discountDark
                  : AppColors.warning,
            ),
          ),
          Text("$_efectiveDateLabel", style: AppTextStyles.captionSmall),

          Buttons(
            height: 32,
            margin: EdgeInsets.only(top: 8),
            padding: EdgeInsets.fromLTRB(12, 4, 12, 4),
            onTap: () => copyCodeVoucer(context),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .center,
              children: [
                Text(
                  "${data.code}",
                  style: AppTextStyles.buttonSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Icon(Icons.copy_rounded, color: AppColors.primary),
              ],
            ),
          ),

          ///
        ],
      ),
    );
  }

  void copyCodeVoucer(BuildContext context) {
    Clipboard.setData(ClipboardData(text: "ABC1212")).then((_) async {
      await getIt<FlushbarHelper>().showNormalFlushbar(
        context: context,
        message: LocaleKeys.voucher_label_copy.tr(),
        posisi: FlushbarPosition.BOTTOM,
      );
    });
  }
}
