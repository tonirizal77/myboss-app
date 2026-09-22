part of 'main_widgets.dart';

class ButtonQrcode extends StatelessWidget {
  const ButtonQrcode({super.key});

  @override
  Widget build(BuildContext context) {
    return ButtonsWidget(
      isShadow: true,
      width: 64,
      height: 64,
      rounded: 32,
      isBorder: true,
      borderWidth: 5,
      borderColor: AppTheme.surface(context),
      padding: EdgeInsets.all(4),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
        child: Icon(Icons.qr_code, color: AppTheme.surface(context)),
      ),
      onTap: () async {
        await MainPageFlow.showBarcodeMember(context);
      },
    );
  }
}
