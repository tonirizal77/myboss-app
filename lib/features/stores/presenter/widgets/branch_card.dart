part of 'widgets.dart';

/// Branch card (Figma `branch card`): round avatar overlapping the card top,
/// "Selected ✓" / "Select" action, name, status + distance and address.
class BranchCard extends StatelessWidget {
  const BranchCard({
    super.key,
    required this.data,
    required this.selected,
    this.position,
    this.onSelect,
  });

  final StoreList data;
  final bool selected;
  final Position? position;
  final VoidCallback? onSelect;

  @override
  Widget build(BuildContext context) {
    final isOpen = data.isOpen;

    return GestureDetector(
      onTap: onSelect,
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          /// Card
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.fromLTRB(16, 64, 16, 16),
            decoration: BoxDecoration(
              color: MyBossColors.surfaceContainerLow,
              borderRadius: BorderRadius.circular(10),
              border: selected
                  ? Border.all(color: MyBossColors.primary, width: 2)
                  : null,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 2.5,
                  offset: const Offset(0, 0.5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: MyBossTextStyles.subtitle.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    MyBossStatusChip(
                      label: isOpen
                          ? LocaleKeys.branch_open.tr()
                          : LocaleKeys.branch_closed.tr(),
                      kind: isOpen
                          ? MyBossChipKind.success
                          : MyBossChipKind.danger,
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        branchSubtitle(data, position),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: MyBossTextStyles.caption.copyWith(
                          color: MyBossColors.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  data.address ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: MyBossTextStyles.caption.copyWith(
                    color: MyBossColors.onSurfaceVariant,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),

          /// Avatar
          Positioned(
            left: 16,
            top: 0,
            child: _BranchAvatar(image: data.image, grayscale: !isOpen),
          ),

          /// Action
          Positioned(right: 16, top: 38, child: _action()),
        ],
      ),
    );
  }

  Widget _action() {
    if (selected) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            LocaleKeys.branch_selected.tr(),
            style: MyBossTextStyles.button.copyWith(
              color: MyBossColors.primary,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.check, size: 22, color: MyBossColors.primary),
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: MyBossColors.primary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        LocaleKeys.branch_select.tr(),
        style: MyBossTextStyles.button.copyWith(color: MyBossColors.onPrimary),
      ),
    );
  }
}

class _BranchAvatar extends StatelessWidget {
  const _BranchAvatar({this.image, this.grayscale = false});

  final String? image;
  final bool grayscale;

  static const _grayMatrix = <double>[
    0.2126, 0.7152, 0.0722, 0, 0, //
    0.2126, 0.7152, 0.0722, 0, 0,
    0.2126, 0.7152, 0.0722, 0, 0,
    0, 0, 0, 1, 0,
  ];

  @override
  Widget build(BuildContext context) {
    final fallback = Image.asset(Assets.branchAvatar, fit: BoxFit.cover);
    final hasImage = (image ?? '').isNotEmpty;

    Widget avatar = ClipOval(
      child: SizedBox(
        width: 64,
        height: 64,
        child: hasImage
            ? Image.network(
                image!,
                fit: BoxFit.cover,
                // Show the logo until the photo is decoded (and on errors).
                frameBuilder: (_, child, frame, _) =>
                    frame == null ? fallback : child,
                errorBuilder: (_, _, _) => fallback,
              )
            : fallback,
      ),
    );

    if (grayscale) {
      avatar = ColorFiltered(
        colorFilter: const ColorFilter.matrix(_grayMatrix),
        child: avatar,
      );
    }

    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            blurRadius: 3,
            offset: const Offset(0, 1.5),
          ),
        ],
      ),
      child: avatar,
    );
  }
}
