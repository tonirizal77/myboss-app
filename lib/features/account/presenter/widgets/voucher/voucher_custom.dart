part of '../widgets.dart';

class VoucherCustom extends StatelessWidget {
  final double height;

  const VoucherCustom({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: .center,
      children: [
        /// Bg Content
        Container(
          height: height,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, right: 24, top: 4, bottom: 4),
          decoration: BoxDecoration(
            color: AppTheme.surface(context),
            // color: Colors.amber,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                offset: const Offset(0, 1),
                blurRadius: 5,
              ),

              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                offset: const Offset(0, 0),
                blurRadius: 1,
              ),
            ],
          ),
        ),

        /// Image
        /// Red Left
        Align(
          alignment: Alignment.centerLeft,
          child: ImageAssets(
            image: AppTheme.isDark(context) ? Assets.voucherB : Assets.voucherR,
          ),
        ),

        /// White Right
        Align(
          alignment: Alignment.centerRight,
          child: ImageAssets(
            image: AppTheme.isDark(context)
                ? Assets.voucherBR
                : Assets.voucherWR,
          ),
        ),
      ],
    );
  }
}



        // Container(
        //   height: height,
        //   alignment: Alignment.center,
        //   child: Stack(
        //     alignment: .center,
        //     children: [

        //       // /// White Right
        //       // Align(
        //       //   alignment: Alignment.centerRight,
        //       //   child: ImageAssets(
        //       //     // fit: BoxFit.fitHeight,
        //       //     height: height + 8,
        //       //     image: AppTheme.isDark(context)
        //       //         ? Assets.voucherBR
        //       //         : Assets.voucherWR,
        //       //   ),
        //       // ),
        //     ],
        //   ),
        // ),