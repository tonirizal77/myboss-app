part of '../widgets.dart';

class ButtonMenuAkun extends StatelessWidget {
  final Widget icon, title;
  final void Function() onTap;
  final bool arrowRight;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double? height;

  const ButtonMenuAkun({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.arrowRight = false,
    this.padding,
    this.borderRadius,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Buttons(
      rounded: 0,
      isBorder: false,
      height: height ?? 48,
      borderRadius: borderRadius,
      padding:
          padding ??
          EdgeInsets.fromLTRB(arrowRight ? 24 : 12, 8, arrowRight ? 8 : 12, 8),
      onTap: onTap,
      child: Row(
        spacing: 12,
        mainAxisAlignment: .spaceBetween,
        children: [
          SizedBox(width: 32, height: 32, child: icon),
          Expanded(child: title),
          Visibility(
            visible: arrowRight,
            child: SizedBox(
              width: 32,
              height: 32,
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppTheme.outline(context),
                size: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
