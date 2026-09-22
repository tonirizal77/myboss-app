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
        final _tiers = (state.profile.level == 0 ? 1 : state.profile.level);

        final _tierLabel = _tiers == 1
            ? "Cool"
            : _tiers == 2
            ? "Cooler"
            : "Coolest";

        final _iconTier = _tiers == 1
            ? Assets.icTierCool
            : _tiers == 2
            ? Assets.icTierCooler
            : Assets.icTierCoolest;

        /// Swith Logic Color Text L/D
        /// 1 - Cool    : w/b
        /// 2 - Cooler  : b/b
        /// 3 - Coolest : w/w

        Color? colorText;

        if (_tiers == 1) {
          colorText = AppTheme.surface(context);
        } else if (_tiers == 2) {
          colorText = AppColors.black;
        } else {
          colorText = AppColors.white;
        }

        final _nameStyle = AppTextStyles.titleBig1.copyWith(color: colorText);
        final _tierColor = AppTextStyles.titleBig2.copyWith(color: colorText);
        final _barcodeStyle = AppTextStyles.caption.copyWith(color: colorText);
        final _showThis = AppTextStyles.bodyBig2.copyWith(color: colorText);
        final _genCode = state.genCode.code;
        final _barcode = _genCode.isEmpty ? state.profile.code : _genCode;
        final _avatar = state.profile.favatar;

        return Center(
          child: Column(
            crossAxisAlignment: .center,
            children: [
              const SizedBox(height: 32),

              /// Profile Circle
              CircleImage(
                color: Colors.transparent,
                size: 80,
                border: Border.all(color: AppTheme.surface(context), width: 2),
                child: ImageNetwork(
                  imageUrl: _avatar,
                  imgError: widget.image,
                  width: 80,
                  radius: 40,
                  boxFit: BoxFit.contain,
                  showError: false,
                ),
              ),

              const SizedBox(height: 32),

              /// Name and Tiers
              Column(
                mainAxisAlignment: .center,
                spacing: 8,
                children: [
                  Text(
                    state.profile.name,
                    style: _nameStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisSize: .min,
                    spacing: 8,
                    children: [
                      Text(_tierLabel, style: _tierColor),
                      Image.asset(_iconTier, height: 32),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// Barcode
              Container(
                child: Column(
                  mainAxisAlignment: .center,
                  spacing: 8,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),
                      child: BarcodeWidget(
                        barcode: Barcode.code128(),
                        style: _barcodeStyle,
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.all(24),
                        data: _barcode,
                        height: 140,
                        width: 300,
                        drawText: false,
                        errorBuilder: (context, error) => Center(
                          child: Text(
                            error,
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.warning,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //
                    Text(_barcode, style: _barcodeStyle),
                  ],
                ),
              ),

              /// Label
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 16),
                child: Text(LocaleKeys.label_barcode.tr(), style: _showThis),
              ),

              /// Timer Count Down
              Text(
                LocaleKeys.label_refresh_in.tr(args: [_countDownLabel]),
                style: _barcodeStyle,
              ),
            ],
          ),
        );
      },
    );
  }
}
