part of '../widgets.dart';

/// Scalloped "points" badge (Figma `loyalty point`): a rounded 8-lobe coin
/// with a hole. Drawn here until the vector asset is exported from Figma.
class PointsBadge extends StatelessWidget {
  const PointsBadge({super.key, this.size = 32, this.color, this.holeColor});

  final double size;
  final Color? color;

  /// Color seen through the hole (the surface behind the badge).
  final Color? holeColor;

  @override
  Widget build(BuildContext context) {
    final badge = color ?? MyBossColors.onSurface;

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(Icons.new_releases, size: size, color: badge),
          Container(
            width: size * 0.3,
            height: size * 0.3,
            decoration: BoxDecoration(
              color: holeColor ?? MyBossColors.surface,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
