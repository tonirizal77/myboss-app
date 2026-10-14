part of 'widgets.dart';

/// Hairline between Home sections: inset from the screen edges and fading
/// out at both ends (Figma).
class HomeSectionDivider extends StatelessWidget {
  const HomeSectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final line = MyBossColors.outline;

    return Container(
      color: MyBossColors.surfaceContainerLowest,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        height: 1,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              line.withValues(alpha: 0),
              line,
              line,
              line.withValues(alpha: 0),
            ],
            stops: const [0, 0.15, 0.85, 1],
          ),
        ),
      ),
    );
  }
}
