part of 'widgets.dart';

class CardAnimMaskot extends StatefulWidget {
  final double? heightBox;
  final Color? color;

  const CardAnimMaskot({super.key, this.heightBox, this.color});

  @override
  State<CardAnimMaskot> createState() => _CardAnimMaskotState();
}

class _CardAnimMaskotState extends State<CardAnimMaskot> {
  late final Future<LottieComposition> _composition;

  @override
  void initState() {
    super.initState();

    _composition = AssetLottie(Assets.animMaskot).load();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.xy(
        Responsive.isMobile(context) ? 2.25 : 1.25,
        1,
      ),
      child: SizedBox(
        width: widget.heightBox,
        child: FutureBuilder<LottieComposition>(
          future: _composition,
          builder: (context, snapshot) {
            var composition = snapshot.data;
            if (composition != null) {
              return Lottie(repeat: false, composition: composition);
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );

    // return Container(
    //   color: widget.color?.withOpacity(.5),
    //   height: widget.heightBox,
    //   child: Align(
    //     alignment: AlignmentGeometry.xy(
    //       Responsive.isMobile(context) ? 2.25 : 1.25,
    //       1,
    //     ),
    //     child: Lottie.asset(
    //       height: 200,
    //       width: 200,
    //       Assets.animMaskot,
    //       repeat: true,
    //       fit: BoxFit.cover,
    //       // controller: _controller,
    //       reverse: true,
    //       onLoaded: (composition) {
    //         // Configure the AnimationController with the duration of the
    //         // Lottie file and start the animation.
    //         // _controller
    //         //   ..duration = composition.duration
    //         //   ..forward();
    //       },
    //     ),
    //   ),
    // );
  }
}
