part of '../widgets.dart';

/// Product picture from an asset path or an http(s) URL.
class ProductImage extends StatelessWidget {
  const ProductImage(this.path, {super.key, this.fit = BoxFit.contain});

  final String path;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final fallback = Icon(
      Icons.image_not_supported_outlined,
      color: MyBossColors.onSurfaceVariant,
    );

    if (path.isEmpty) return Center(child: fallback);

    return path.startsWith('http')
        ? Image.network(
            path,
            fit: fit,
            errorBuilder: (_, _, _) => Center(child: fallback),
          )
        : Image.asset(
            path,
            fit: fit,
            errorBuilder: (_, _, _) => Center(child: fallback),
          );
  }
}
