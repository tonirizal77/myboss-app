part of 'widgets.dart';

class CardMemberBarcode extends StatefulWidget {
  // final int? tiers;
  final String image;
  final String name;

  const CardMemberBarcode({
    super.key,
    // this.tiers,
    this.name = "User",
    this.image = Assets.icMaskot1,
  });

  @override
  State<CardMemberBarcode> createState() => _CardMemberBarcodeState();
}

class _CardMemberBarcodeState extends State<CardMemberBarcode> {
  Timer? _timer;
  late Duration _remaining;

  @override
  void initState() {
    super.initState();

    /// Turn on Prevent screenshot
    MainPageFlow.turnOnPrevent(context);

    /// Balance shown under the name.
    context.read<PointsCubit>().load();

    /// Resume the countdown from the active session (set in
    /// [AccountFlows.generateCode]) instead of always restarting at the
    /// full duration - covers the sheet being closed and reopened before
    /// the previous countdown finished.
    _remaining = AccountFlows.remainingCodeDuration;

    /// Digunakan utk refresh data dalam 1 akun yg sama
    /// jika jalan di 2 device berbeda
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _onTick());
  }

  Future<void> _onTick() async {
    if (!mounted) return;

    if (_remaining <= const Duration(seconds: 1)) {
      AccountFlows.codeRefreshCount++;

      /// Reached the refresh limit - close the sheet instead of
      /// generating yet another code.
      if (AccountFlows.codeRefreshCount >= AccountFlows.maxCodeRefresh) {
        _timer?.cancel();
        context.pop();
        return;
      }

      /// [AccountFlows.generateCode] now waits for the new code to
      /// actually arrive before returning, so [remainingCodeDuration]
      /// read afterwards reflects the fresh server-driven duration -
      /// not the one that just expired.
      await AccountFlows.generateCode(context);

      if (mounted) {
        setState(() => _remaining = AccountFlows.remainingCodeDuration);
      }
    } else {
      setState(() => _remaining -= const Duration(seconds: 1));
    }
  }

  String get _countDownLabel {
    final _minutes = _remaining.inMinutes
        .remainder(60)
        .toString()
        .padLeft(2, '0');
    final _seconds = _remaining.inSeconds
        .remainder(60)
        .toString()
        .padLeft(2, '0');

    return '$_minutes:$_seconds';
  }

  @override
  void dispose() {
    /// Turn on Prevent screenshot
    MainPageFlow.turnOffPrevent();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final onSurface = MyBossColors.onSurface;
        final barcodeStyle = MyBossTextStyles.caption.copyWith(
          color: onSurface,
        );
        final code = state.genCode.code.isEmpty
            ? state.profile.code
            : state.genCode.code;
        final avatar = state.profile.favatar;
        final fallback = Image.asset(
          Assets.avatarsMyBoss.first,
          fit: BoxFit.cover,
        );

        // Figma `Membership Card`: brand glow at the top fading into the surface.
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.topCenter,
              radius: 0.85,
              // Wider than tall: a flat glow instead of a round arc.
              transform: const _StretchX(1.4),
              colors: [
                MyBossColors.primary.withValues(alpha: 0.9),
                MyBossColors.surface,
              ],
              stops: const [0, 0.7],
            ),
          ),
          padding: const EdgeInsets.fromLTRB(24, 48, 24, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /// Avatar
              Container(
                width: 84,
                height: 84,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyBossColors.surface,
                ),
                child: ClipOval(
                  child: avatar.isEmpty
                      ? fallback
                      : Image.network(
                          avatar,
                          fit: BoxFit.cover,
                          errorBuilder: (_, _, _) => fallback,
                        ),
                ),
              ),
              const SizedBox(height: 24),

              /// Name
              Text(
                state.profile.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: MyBossTextStyles.titleBig1.copyWith(color: onSurface),
              ),
              const SizedBox(height: 16),

              /// Points
              BlocBuilder<PointsCubit, PointsState>(
                buildWhen: (a, b) => a.summary != b.summary,
                builder: (context, points) => MemberPointsText(
                  summary: points.summary,
                  align: CrossAxisAlignment.center,
                  size: 38,
                ),
              ),
              const SizedBox(height: 32),

              /// Barcode
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BarcodeWidget(
                  barcode: Barcode.code128(),
                  style: barcodeStyle,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(24),
                  data: code.isEmpty ? '-' : code,
                  height: 140,
                  width: 280,
                  drawText: false,
                  errorBuilder: (context, error) => Center(
                    child: Text(
                      error,
                      style: MyBossTextStyles.caption.copyWith(
                        color: MyBossColors.danger,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(code, style: barcodeStyle),

              /// Label
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 12),
                child: Text(
                  LocaleKeys.label_barcode.tr(),
                  textAlign: TextAlign.center,
                  style: MyBossTextStyles.bodyBig2.copyWith(color: onSurface),
                ),
              ),

              /// Timer Count Down
              Text(
                LocaleKeys.label_refresh_in.tr(args: [_countDownLabel]),
                style: barcodeStyle.copyWith(
                  color: MyBossColors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

/// Stretches a gradient horizontally around the top center of its box.
class _StretchX extends GradientTransform {
  const _StretchX(this.factor);

  final double factor;

  @override
  Matrix4 transform(Rect bounds, {ui.TextDirection? textDirection}) {
    final cx = bounds.center.dx;
    final top = bounds.top;

    return Matrix4.identity()
      ..translateByDouble(cx, top, 0, 1)
      ..scaleByDouble(factor, 1, 1, 1)
      ..translateByDouble(-cx, -top, 0, 1);
  }
}
