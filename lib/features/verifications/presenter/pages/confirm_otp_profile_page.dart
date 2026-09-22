part of 'pages.dart';

class ConfirmOtpProfilePage extends StatelessWidget {
  const ConfirmOtpProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      // useScrollView: true,
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: "Verify WhatsApp",
        onClose: () => context.pop(),
      ),
      maxWidth: Responsive.minWidthMobile,
      padding: EdgeInsets.zero,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(24, SyncUI.padTop, 24, 24),
        child: Column(
          mainAxisAlignment: Responsive.isMobile(context) ? .start : .center,
          children: [
            _imageOtp(context),
            const SizedBox(height: 32),

            /// for User Bloc
            const ConfirmOtpProfile(),
          ],
        ),
      ),
    );
  }

  Container _imageOtp(BuildContext context) {
    return Container(
      width: 232,
      height: 112,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.imgVerifyOtpWa)),
        borderRadius: BorderRadius.circular(20),
        border: AppTheme.isDark(context)
            ? Border.all(width: 8, color: AppTheme.outline(context))
            : null,
      ),
    );
  }
}
