part of 'asset_widgets.dart';

class ImageAssets extends StatelessWidget {
  final String? image;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final double? radius;
  final Decoration? decoration;
  final BoxBorder? border;
  final Widget? child;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool isClose;
  final Size? size;
  final Color? color;

  const ImageAssets({
    super.key,
    this.image,
    this.width,
    this.height,
    this.fit,
    this.decoration,
    this.border,
    this.child,
    this.margin,
    this.padding,
    this.radius,
    this.isClose = false,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.hardEdge,
      margin: margin,
      padding: padding,
      decoration:
          decoration ??
          BoxDecoration(
            border: border,
            color: color,
            borderRadius: BorderRadius.circular(radius ?? borderRadius),
          ),
      child:
          child ??
          Image.asset(
            image ?? '',
            fit: fit ?? BoxFit.cover,
            width: size?.width,
            height: size?.height,
            colorBlendMode: BlendMode.saturation,
            color: isClose ? AppColors.grey50 : null,
          ),
    );
  }
}
