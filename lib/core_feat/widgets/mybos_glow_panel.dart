import 'package:flutter/material.dart';

/// Panel with a thin [color] border and an inner glow (Figma "Earn Points"
/// / "Points" / "Voucher" panels): strongest and deepest in the corners, a
/// soft band on the top and bottom edges, a thin rim on the sides.
class MyBossGlowPanel extends StatelessWidget {
  const MyBossGlowPanel({
    super.key,
    required this.color,
    required this.child,
    this.background,
  });

  final Color color;
  final Widget child;

  /// Fill behind the glow (transparent when null).
  final Color? background;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        border: Border.all(color: color),
      ),
      child: CustomPaint(
        painter: _InnerGlowPainter(glow: color),
        child: child,
      ),
    );
  }
}

/// Inner glow (Figma): a soft band along the top and bottom edges, a thin
/// rim on the sides, and extra light in the corners so the glow reaches
/// further in there than in the middle of an edge.
class _InnerGlowPainter extends CustomPainter {
  const _InnerGlowPainter({required this.glow});

  final Color glow;

  static const double _band = 52; // top / bottom depth
  static const double _rim = 12; // side depth
  static const double _corner = 130; // corner radius of extra light
  static const double _alpha = 0.3;

  /// Eased fade: strong at the edge, long soft tail.
  List<Color> _fade(double alpha) => [
    for (final t in const [0.0, 0.2, 0.45, 0.7, 1.0])
      glow.withValues(alpha: alpha * (1 - t) * (1 - t)),
  ];

  void _drawBand(
    Canvas canvas,
    Rect rect,
    Alignment from,
    Alignment to,
    double a,
  ) {
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          begin: from,
          end: to,
          colors: _fade(a),
        ).createShader(rect),
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    canvas.save();
    canvas.clipRect(Offset.zero & size);

    // Top and bottom bands.
    _drawBand(
      canvas,
      Rect.fromLTWH(0, 0, w, _band),
      Alignment.topCenter,
      Alignment.bottomCenter,
      _alpha,
    );
    _drawBand(
      canvas,
      Rect.fromLTWH(0, h - _band, w, _band),
      Alignment.bottomCenter,
      Alignment.topCenter,
      _alpha,
    );

    // Thin side rims.
    _drawBand(
      canvas,
      Rect.fromLTWH(0, 0, _rim, h),
      Alignment.centerLeft,
      Alignment.centerRight,
      _alpha * 0.6,
    );
    _drawBand(
      canvas,
      Rect.fromLTWH(w - _rim, 0, _rim, h),
      Alignment.centerRight,
      Alignment.centerLeft,
      _alpha * 0.6,
    );

    // Corners.
    for (final c in [Offset.zero, Offset(w, 0), Offset(0, h), Offset(w, h)]) {
      final rect = Rect.fromCircle(center: c, radius: _corner);
      canvas.drawRect(
        rect,
        Paint()
          ..shader = RadialGradient(
            colors: _fade(_alpha * 0.8),
          ).createShader(rect),
      );
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(_InnerGlowPainter old) => old.glow != glow;
}
