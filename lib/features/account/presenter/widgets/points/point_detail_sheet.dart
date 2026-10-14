part of '../widgets.dart';

/// Receipt of a points entry (Figma `Points Transaction Detail`).
class PointDetailSheet {
  const PointDetailSheet._();

  static Future<void> show(BuildContext context, PointEntry entry) {
    return MyBossBottomSheet.show<void>(
      context,
      showClose: false,
      builder: (_) => _PointDetailBody(entry: entry),
    );
  }
}

class _PointDetailBody extends StatelessWidget {
  const _PointDetailBody({required this.entry});

  final PointEntry entry;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.85;

    return SizedBox(
      height: height,
      child: FutureBuilder(
        future: getIt<GetPointDetailUc>().call(entry.id),
        builder: (context, snapshot) {
          final detail = snapshot.data?.fold<PointDetail?>(
            (_) => null,
            (d) => d,
          );

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  entry.isEarned
                      ? LocaleKeys.points_earned.tr()
                      : LocaleKeys.points_redeemed.tr(),
                  style: MyBossTextStyles.titleBig2.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
              ),
              Expanded(
                child: detail == null
                    ? Center(
                        child: snapshot.connectionState == ConnectionState.done
                            ? Text(
                                LocaleKeys.points_empty.tr(),
                                style: MyBossTextStyles.body.copyWith(
                                  color: MyBossColors.onSurfaceVariant,
                                ),
                              )
                            : CircularProgressIndicator(
                                color: MyBossColors.primary,
                              ),
                      )
                    : _Receipt(detail: detail),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: MyBossButton(
                  label: LocaleKeys.points_close.tr(),
                  size: MyBossButtonSize.large,
                  expand: true,
                  onPressed: () => Navigator.of(context).maybePop(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Receipt extends StatelessWidget {
  const _Receipt({required this.detail});

  final PointDetail detail;

  static String _rp(int v) => PointsFormat.rupiah(v, separator: ',');

  @override
  Widget build(BuildContext context) {
    final id = context.locale.languageCode == 'id';
    final entry = detail.entry;

    // Alternating row backgrounds, like the Figma receipt.
    var row = 0;
    Widget line(
      String label,
      String value, {
      Color? valueColor,
      bool bold = false,
    }) {
      final zebra = row.isOdd;
      row++;

      return Container(
        color: zebra ? MyBossColors.surfaceContainerLow : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                label,
                style: MyBossTextStyles.bodyBig2.copyWith(
                  color: MyBossColors.onSurface,
                ),
              ),
            ),
            Text(
              value,
              style:
                  (bold
                          ? MyBossTextStyles.subtitleBig2
                          : MyBossTextStyles.bodyMedium)
                      .copyWith(color: valueColor ?? MyBossColors.onSurface),
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  PointsFormat.date(entry.date, id: id),
                  style: MyBossTextStyles.bodyMedium.copyWith(
                    color: MyBossColors.onSurfaceVariant,
                  ),
                ),
                Text(
                  LocaleKeys.points_earned_value.tr(args: ['${entry.points}']),
                  style: MyBossTextStyles.subtitleBig2.copyWith(
                    color: MyBossColors.success,
                  ),
                ),
              ],
            ),
          ),
          for (final item in detail.lines)
            line('${item.quantity}x ${item.name}', _rp(item.price)),
          _DashedDivider(color: MyBossColors.outline),
          line(
            LocaleKeys.points_subtotal.tr(),
            '(${detail.itemCount}) ${_rp(detail.subtotal)}',
          ),
          line(
            LocaleKeys.points_discount.tr(),
            '-${_rp(detail.discount)}',
            valueColor: MyBossColors.danger,
          ),
          line(
            LocaleKeys.points_redeem_points.tr(),
            '-${_rp(detail.redeemedPoints)}',
            valueColor: MyBossColors.danger,
          ),
          line(LocaleKeys.points_service_fee.tr(), _rp(detail.serviceFee)),
          line(LocaleKeys.points_tax.tr(), _rp(detail.tax)),
          line(LocaleKeys.points_shipping_cost.tr(), _rp(detail.shippingCost)),
          line(LocaleKeys.points_total.tr(), _rp(detail.total), bold: true),
        ],
      ),
    );
  }
}

class _DashedDivider extends StatelessWidget {
  const _DashedDivider({required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: LayoutBuilder(
        builder: (context, constraints) {
          const dash = 6.0;
          const gap = 4.0;
          final count = (constraints.maxWidth / (dash + gap)).floor();

          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              count,
              (_) => Container(width: dash, height: 1, color: color),
            ),
          );
        },
      ),
    );
  }
}
