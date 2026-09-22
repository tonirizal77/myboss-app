part of 'asset_widgets.dart';

class CircleBack extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double? height;
  final double? width;

  const CircleBack({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          // color: Colors.yellow,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.72),
              // blurRadius: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleBigBack extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const CircleBigBack({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: 234,
        width: 234,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.16),
              blurRadius: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleMidleBack extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  const CircleMidleBack({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: 162,
        width: 175,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.16),
              offset: const Offset(0, 0),
              blurRadius: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleSmallBack extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double? height;
  final double? width;

  const CircleSmallBack({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: height ?? 137,
        width: width ?? 146,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.16),
              offset: const Offset(0, 0),
              blurRadius: 60,
            ),
          ],
        ),
      ),
    );
  }
}

class CircleBlur extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final double? height;
  final double? width;

  const CircleBlur({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Container(
        height: height ?? 137,
        width: width ?? 146,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.16),
              offset: const Offset(0, 0),
              blurRadius: 60,
            ),
          ],
        ),
      ),
    );
  }
}
