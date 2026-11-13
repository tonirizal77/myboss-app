part of 'widgets.dart';

/// Branch card (Figma `branch card`): large round avatar with a white ring,
/// mostly above the card and overlapping its top-left corner, "Selected ✓" /
/// "Select" action on the right, then name, status + distance and address.
class BranchCard extends StatelessWidget {
  const BranchCard({
    super.key,
    required this.data,
    required this.selected,
    this.position,
    this.onSelect,
  });

  final StoreBranch data;
  final bool selected;
  final Position? position;
  final VoidCallback? onSelect;

  static const double _avatarSizeReduced = 10;

  static const double _avatarSize =
      _BranchAvatar.defaultSize - _avatarSizeReduced;

  /// Part of the avatar that sticks out above the card.
  static const double _avatarOverhang = 72 - _avatarSizeReduced;

  /// Part of the avatar that lies on the card.
  static const double _avatarOnCard = _avatarSize - _avatarOverhang;

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
            margin: const EdgeInsets.only(top: _avatarOverhang),
            padding: const EdgeInsets.fromLTRB(16, _avatarOnCard + 20, 16, 16),
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
            child: _BranchAvatar(
              size: _avatarSize,
              image: data.logoUrl,
              grayscale: !isOpen,
            ),
          ),

          /// Action - vertically centred on the avatar's part of the card.
          Positioned(
            right: 24,
            top: _avatarOverhang,
            height: _avatarOnCard + 20,
            child: Center(child: _action()),
          ),
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
          Icon(Icons.check, size: 22, color: MyBossColors.primary),
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
  const _BranchAvatar({
    this.size = defaultSize,
    this.image,
    this.grayscale = false,
  });

  final String? image;

  /// Outer diameter, border included.
  final double size;
  final bool grayscale;

  static const double defaultSize = 120;
  static const double _border = 6;

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
        width: size - _border * 2,
        height: size - _border * 2,
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

    // Container insets its child by the border width, so the ring stays
    // visible around the photo (a DecoratedBox would paint it underneath).
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(color: Colors.white, width: _border),
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
