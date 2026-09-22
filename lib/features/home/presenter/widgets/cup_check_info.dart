part of 'widgets.dart';

class CupCheckInfo extends StatelessWidget {
  final int point;

  const CupCheckInfo({super.key, this.point = 0});

  @override
  Widget build(BuildContext context) {
    final _freePoint = LocaleKeys.home_point_free.tr(args: ['${point}']);

    return Column(
      mainAxisSize: .min,
      mainAxisAlignment: .center,
      children: [
        /// Image
        Stack(
          alignment: .topRight,
          children: [
            ImageAssets(width: 32, image: Assets.icBigCup),

            /// Check Circle
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check_circle,
                color: Colors.amberAccent,
                size: 18,
              ),
            ),
          ],
        ),

        /// Stamps Point
        Column(
          mainAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            /// Anda punya
            Text(
              LocaleKeys.home_you_have.tr(),
              style: AppTextStyles.caption.copyWith(fontSize: 12),
            ),

            /// xx Gratis
            Flexible(
              child: SizedBox(
                width: _freePoint.length > 10 ? 64 : null,
                child: Text(
                  _freePoint,
                  style: AppTextStyles.caption.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
