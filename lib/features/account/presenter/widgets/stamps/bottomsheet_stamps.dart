part of '../widgets.dart';

class BottomsheetStamps extends StatelessWidget {
  final StampsDetailModel data;
  final StampsHistory history;

  const BottomsheetStamps({
    super.key,
    required this.data,
    required this.history,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final _item = data.orderDetail?.toList() ?? [];

    final _rincian = <DataMap>[
      {'teks1': LocaleKeys.stamps_sub_total.tr(), 'teks2': data.ftotalAmount},
      {'teks1': LocaleKeys.stamps_disc.tr(), 'teks2': data.fdiscountAmount},
      {'teks1': LocaleKeys.stamps_point.tr(), 'teks2': data.fredeemedAmount},
      {
        'teks1': LocaleKeys.stamps_service.tr(),
        'teks2': data.fserviceChargeAmount,
      },
      {'teks1': LocaleKeys.stamps_tax.tr(), 'teks2': data.ftaxAmount},
      {'teks1': LocaleKeys.stamps_shipping.tr(), 'teks2': data.fshippingCost},
      {'teks1': LocaleKeys.stamps_total.tr(), 'teks2': data.ftotalAmount},
    ];

    final _length = ((MediaQuery.of(context).size.width.toInt() / 7) - 1.9)
        .toInt();

    final _date = DateTime.parse(history.earnedDate).shortDate;

    return Column(
      mainAxisSize: .min,
      children: [
        /// Date Stamp
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Text(
              _date,
              style: AppTextStyles.body.copyWith(color: AppColors.grey50),
            ),
            Text(
              '+${history.balancePoints} ${LocaleKeys.stamps_sub_title.tr()}',
              style: AppTextStyles.body.copyWith(color: AppColors.primary),
            ),
          ],
        ),

        /// Item Detail
        Column(
          children: List.generate(
            _item.length,
            (i) => RowText(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: i.isEven
                  ? Colors.transparent
                  : AppTheme.surfaceContainerLow(context),
              label1: "${_item[i].qty}x ${_item[i].name?.capitalize()}",
              label2: _item[i].price,
            ),
          ),
        ),

        /// Divider Custom
        Container(
          child: Text(
            "-" * _length,
            overflow: TextOverflow.clip,
            maxLines: 1,
            style: TextStyle(fontSize: 20),
          ),
        ),

        /// Rincian
        Column(
          children: List.generate(
            _rincian.length,
            (i) => RowText2(
              height: 40,
              color: i.isEven
                  ? Colors.transparent
                  : AppTheme.surfaceContainerLow(context),
              padding: EdgeInsets.symmetric(horizontal: 16),
              label1: _rincian[i]['teks1'].toString(),
              label2: _rincian[i]['teks2'],
            ),
          ),
        ),
      ],
    );
  }
}

/// Contoh Repeat for Custom Divider
// Text(
//   "⭐" * 5, // Quickly creates a 5-star rating display
//   style: TextStyle(fontSize: 20),
// ),
