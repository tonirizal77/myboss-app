part of 'widgets.dart';

class CardMessageFree extends StatelessWidget {
  final EdgeInsetsGeometry? padding;

  const CardMessageFree({super.key, this.padding});

  @override
  Widget build(BuildContext context) {
    /// Label Info
    final _message1 = LocaleKeys.home_message_1.tr();
    final _message2 = LocaleKeys.home_message_2.tr();

    /// Card Color
    final _bgColor = AppTheme.primaryContainer(context);

    /// Text Color
    final _style1 = AppTextStyles.titleBig1.copyWith(
      color: AppTheme.isDark(context)
          ? AppColors.onBgMessageDark
          : AppColors.onBgMessage,
    );

    final _style2 = AppTextStyles.bodyHuge2.copyWith(
      fontSize: Responsive.isMobile(context) ? 20 : 16,
      color: AppTheme.isDark(context)
          ? AppColors.onBgMessageDark
          : AppColors.onBgMessage,
    );

    return CardCustom(
      alignment: Alignment.center,
      radius: 0,
      padding: padding ?? EdgeInsets.all(40),
      color: _bgColor,
      child: Column(
        mainAxisSize: .min,
        mainAxisAlignment: .center,
        children: [
          Text(_message1, style: _style1, textAlign: TextAlign.center),
          const SizedBox(height: 12),
          Text(_message2, style: _style2, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
