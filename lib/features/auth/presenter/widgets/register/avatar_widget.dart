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

        final children = [
          for (var i = 0; i < avatars.length; i++)
            _AvatarItem(
              avatar: avatars[i],
              fallbackAsset:
                  Assets.avatarsMyBoss[i % Assets.avatarsMyBoss.length],
              selected: _selected.id == avatars[i].id,
              onTap: () {
                setState(() => _selected = avatars[i]);
                widget.onTap?.call(avatars[i]);
              },
            ),
        ];

        return Responsive(
          /// Phone
          mobile: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
            child: Row(spacing: 8, children: children),
          ),

          /// Tablet
          tablet: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            width: 260,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: children,
            ),
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
        width: 64,
        height: 64,
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
              Positioned(
                left: -4,
                top: -4,
                child: SvgPicture.asset(
                  Assets.avatarIndicator,
                  width: 72,
                  height: 72,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
