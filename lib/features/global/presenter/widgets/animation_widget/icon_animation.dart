part of 'animation_widgets.dart';

enum AnimatedIconState { first, second }

class AnimatedIconCustom extends StatefulWidget {
  final EdgeInsets? margin;
  final VoidCallback onChangeView;
  final AnimatedIconData icon;
  final AnimatedIconState initialState;

  const AnimatedIconCustom({
    Key? key,
    required this.icon,
    required this.onChangeView,
    required this.initialState,
    this.margin,
  }) : super(key: key);

  @override
  State<AnimatedIconCustom> createState() => _AnimatedIconCustomState();
}

class _AnimatedIconCustomState extends State<AnimatedIconCustom>
    with SingleTickerProviderStateMixin {
  /// Controller
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    /// Initialize Controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    /// Check latest state.
    ///
    /// Jika latest state adalah seconds, maka lakukan animasi supaya icon berubah menjadi yang kedua.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        if (widget.initialState == AnimatedIconState.second) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      });
    });
  }

  /// On Icon Tap Function
  void _handleOnTap() {
    widget.onChangeView();

    setState(() {
      if (_controller.value <= 0) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Buttons(
      margin: widget.margin ?? const EdgeInsets.only(right: 8),
      width: 40,
      height: heightButton,
      rounded: 10,
      isShadow: true,
      isBorder: false,
      onTap: _handleOnTap,
      child: AnimatedIcon(
        icon: widget.icon,
        progress: _controller,
        color: AppColors.primary,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
