part of '../widgets.dart';

/// Avatar picker (Figma `avatar`): a row of 64px avatars, the selected one is
/// circled by a green ring. Uses the API list, falling back to the predefined
/// MyBoss avatars.
class AvatarWidget extends StatefulWidget {
  final void Function(AvatarsModel)? onTap;

  const AvatarWidget({super.key, this.onTap});

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget>
    with AutomaticKeepAliveClientMixin {
  AvatarsModel _selected = AvatarsModel();

  /// Predefined avatars (ids 1..n) used when the API has none.
  late final List<AvatarsModel> _fallback = List.generate(
    Assets.avatarsMyBoss.length,
    (i) => AvatarsModel(id: i + 1, fimg: Assets.avatarsMyBoss[i]),
  );

  @override
  void initState() {
    super.initState();

    context.read<ProfileBloc>().add(ProfileEvent.getAvatar());

    _selected = ProfileEditFlows.formData.avatar;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) =>
          current.action == EditProfileAction.fetchAvatar,
      listener: (context, state) {
        if (state.statusFecthAvatars == Status.failed) {
          getIt<FlushbarHelper>().showErrorFlushbar(
            context: context,
            message: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        final list = state.avatarList.data?.toList() ?? <AvatarsModel>[];
        final avatars = list.isEmpty ? _fallback : list;

        // Preselect the first avatar (and report it to the form).
        if (_selected.id == null && avatars.isNotEmpty) {
          _selected = avatars.first;
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) widget.onTap?.call(_selected);
          });
        }

        final grid = ResponsiveGridOrWrap<AvatarsModel>(
          // Fixed 64px avatars, centered rows.
          minWidth: _AvatarItem.size,
          wrapAlignment: WrapAlignment.center,
          spacing: 8,
          runSpacing: 8,
          padding: EdgeInsets.zero,
          paddingBody: EdgeInsets.zero,
          top: 0,
          // The page scrolls; the list must not grab the drag.
          physics: const NeverScrollableScrollPhysics(),
          isSeperator: false,
          listData: avatars,
          child: (avatar) {
            final i = avatars.indexOf(avatar);

            String _fallbackAsset =
                Assets.avatarsMyBoss[i % Assets.avatarsMyBoss.length];

            return _AvatarItem(
              avatar: avatar,
              fallbackAsset: _fallbackAsset,
              selected: _selected.id == avatar.id,
              onTap: () {
                setState(() => _selected = avatar);
                widget.onTap?.call(avatar);
              },
            );
          },
        );

        return Responsive(
          /// Phone
          mobile: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
            child: grid,
          ),

          /// Tablet
          tablet: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8), 
            child: grid,
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _AvatarItem extends StatelessWidget {
  const _AvatarItem({
    required this.avatar,
    required this.fallbackAsset,
    required this.selected,
    required this.onTap,
  });

  /// Avatar diameter.
  static const double size = 64;

  final AvatarsModel avatar;
  final String fallbackAsset;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final image = avatar.fimg ?? '';
    final fallback = Image.asset(fallbackAsset, fit: BoxFit.cover);

    final Widget picture = image.isEmpty
        ? fallback
        : image.startsWith('http')
        ? Image.network(
            image,
            fit: BoxFit.cover,
            frameBuilder: (_, child, frame, _) =>
                frame == null ? fallback : child,
            errorBuilder: (_, _, _) => fallback,
          )
        : Image.asset(
            image,
            fit: BoxFit.cover,
            errorBuilder: (_, _, _) => fallback,
          );

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size,
        height: size,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ClipOval(
                child: ColoredBox(
                  color: MyBossColors.surfaceContainerLow,
                  child: picture,
                ),
              ),
            ),
            if (selected)
              SvgPicture.asset(Assets.avatarIndicator),
          ],
        ),
      ),
    );
  }
}
