part of 'widgets.dart';

/// Coupon card (Figma `voucher`): ticket icon, dashed divider, promo name,
/// discount, validity and the code with a copy button. Round notches cut on
/// both sides. Tap opens the voucher details.
///
/// A used member voucher ([Voucher.isUsed]) is greyed out and shows when it
/// was used instead of the code.
class VoucherTicket extends StatelessWidget {
  const VoucherTicket({super.key, required this.voucher, this.onTap});

  final Voucher voucher;

  /// Defaults to opening [VoucherDetailSheet].
  final VoidCallback? onTap;

  /// Coupon fill: deep red-brown in dark mode (Figma), pale red in light.
  static Color background() => MyBossColors.dangerContainer;

  @override
  Widget build(BuildContext context) {
    final used = voucher.isUsed;
    final accent = used ? MyBossColors.onSurfaceVariant : MyBossColors.danger;

    return ClipPath(
      clipper: const _TicketClipper(),
      child: Material(
        color: used ? MyBossColors.surfaceContainer : background(),
        child: InkWell(
          onTap: onTap ?? () => VoucherDetailSheet.show(context, voucher),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 72,
                  child: Icon(
                    Icons.confirmation_number_outlined,
                    size: 36,
                    color: accent,
                  ),
                ),
                CustomPaint(
                  size: const Size(1, double.infinity),
                  painter: _DashedLine(color: MyBossColors.onSurfaceVariant),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 16, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Grid cells (tablet) are taller than the content.
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          voucher.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: MyBossTextStyles.body.copyWith(
                            color: MyBossColors.onSurface,
                          ),
                        ),
                        Text(
                          voucher.discount,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: MyBossTextStyles.title.copyWith(color: accent),
                        ),
                        if (voucher.validUntil case final date?)
                          Text(
                            LocaleKeys.promo_valid_until.tr(
                              args: [_date(context, date)],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: MyBossTextStyles.caption.copyWith(
                              color: MyBossColors.onSurfaceVariant,
                            ),
                          ),
                        if (voucher.usedAt case final date?) ...[
                          const SizedBox(height: 8),
                          _UsedBox(
                            label: LocaleKeys.akun_voucher_used_on.tr(
                              args: [_date(context, date)],
                            ),
                          ),
                        ] else if (voucher.code.isNotEmpty) ...[
                          const SizedBox(height: 8),
                          VoucherCodeBox(code: voucher.code),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// `26 Des 2026` / `26 Dec 2026` - month names by hand: intl date data for
/// `id` is not initialized in this app.
String _date(BuildContext context, DateTime date) {
  const en = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];
  const id = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'Mei',
    'Jun',
    'Jul',
    'Agu',
    'Sep',
    'Okt',
    'Nov',
    'Des',
  ];
  final months = context.locale.languageCode == 'id' ? id : en;
  return '${date.day} ${months[date.month - 1]} ${date.year}';
}

/// Voucher code with a copy-to-clipboard button.
class VoucherCodeBox extends StatelessWidget {
  const VoucherCodeBox({super.key, required this.code});

  final String code;

  Future<void> _copy(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: code));
    if (context.mounted) {
      MyBossToast.success(context, LocaleKeys.promo_code_copied.tr());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: MyBossColors.outline),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              code,
              style: MyBossTextStyles.body.copyWith(
                color: MyBossColors.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          IconButton(
            tooltip: LocaleKeys.promo_copy_code.tr(),
            iconSize: 20,
            padding: EdgeInsets.zero,
            onPressed: () => _copy(context),
            icon: Icon(Icons.copy_outlined, color: MyBossColors.onSurface),
          ),
        ],
      ),
    );
  }
}

/// "Used 5 Nov 2026" bar of a used voucher (Figma: black, no border).
class _UsedBox extends StatelessWidget {
  const _UsedBox({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 28,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: MyBossTextStyles.body.copyWith(
          color: MyBossColors.onSurface,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _TicketClipper extends CustomClipper<Path> {
  const _TicketClipper();

  static const double _radius = 8;
  static const double _notch = 12;

  @override
  Path getClip(Size size) {
    final body = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Offset.zero & size,
          const Radius.circular(_radius),
        ),
      );
    final notches = Path()
      ..addOval(
        Rect.fromCircle(center: Offset(0, size.height / 2), radius: _notch),
      )
      ..addOval(
        Rect.fromCircle(
          center: Offset(size.width, size.height / 2),
          radius: _notch,
        ),
      );

    return Path.combine(PathOperation.difference, body, notches);
  }

  @override
  bool shouldReclip(_TicketClipper oldClipper) => false;
}

class _DashedLine extends CustomPainter {
  const _DashedLine({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;
    const dash = 6.0, gap = 4.0;
    for (var y = 8.0; y < size.height - 8; y += dash + gap) {
      canvas.drawLine(Offset(0, y), Offset(0, y + dash), paint);
    }
  }

  @override
  bool shouldRepaint(_DashedLine old) => old.color != color;
}
