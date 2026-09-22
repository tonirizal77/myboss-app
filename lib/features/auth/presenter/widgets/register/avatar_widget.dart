part of '../widgets.dart';

class AvatarWidget extends StatefulWidget {
  final void Function(AvatarsModel)? onTap;

  const AvatarWidget({super.key, this.onTap});

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget>
    with AutomaticKeepAliveClientMixin {
  AvatarsModel _selected = AvatarsModel();

  @override
  void initState() {
    super.initState();

    context.read<ProfileBloc>().add(ProfileEvent.getAvatar());

    _selected = ProfileEditFlows.formData.avatar;

    PrintHelper.printError("__init avatar: $_selected");
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
        final List<AvatarsModel> _listAvatar =
            state.avatarList.data?.toList() ?? _listDummy.toList();

        return state.map((state) {
          // if (state.statusFecthAvatars == Status.loading) {
          //   return const LoadingWidget(absolute: false);
          // }

          return Responsive(
            /// Phone
            mobile: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: .start,
                spacing: 12,
                children: _generateChild(context, _listAvatar),
              ),
            ),

            /// Tablet
            tablet: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(8),
              width: 240,
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: .center,
                spacing: 12,
                runSpacing: 12,
                children: _generateChild(context, _listAvatar),
              ),
            ),
          );
        });
      },
    );
  }

  /// Dummy Avatars
  final List<AvatarsModel> _listDummy = [
    AvatarsModel(id: 1, fimg: Assets.icMaskot1),
    AvatarsModel(id: 2, fimg: Assets.icMaskot2),
    AvatarsModel(id: 3, fimg: Assets.icMaskot3),
    AvatarsModel(id: 4, fimg: Assets.icMaskot4),
    AvatarsModel(id: 5, fimg: Assets.icMaskot5),
    AvatarsModel(id: 6, fimg: Assets.icMaskot6),
    AvatarsModel(id: 7, fimg: Assets.icMaskot7),
    AvatarsModel(id: 8, fimg: Assets.icMaskot8),
  ];

  /// Dummy Colors
  final List<Color> _colors = [
    AppColors.maskot1,
    AppColors.maskot2,
    AppColors.maskot3,
    AppColors.maskot4,
    AppColors.maskot5,
    AppColors.maskot6,
    AppColors.maskot7,
    AppColors.maskot8,
  ];

  List<Widget> _generateChild(
    BuildContext context,
    List<AvatarsModel> _listAvatar,
  ) {
    return List.generate(_listAvatar.length, (i) {
      final _avatar = _listAvatar[i];

      final _icon = _avatar.fimg ?? _listDummy[i].fimg ?? "";
      final _iconErr = _listDummy[i].fimg;
      final _color = _colors[i];

      if (_selected.id == null) {
        _selected = _avatar;
      }

      final _isSelected = _selected.id == _avatar.id;

      return ButtonsWidget(
        rounded: 32,
        height: 64,
        width: 64,
        isBorder: _isSelected,
        borderColor: AppTheme.primary(context),
        borderWidth: 2,
        padding: EdgeInsets.all(4),
        color: Colors.transparent,
        onTap: () {
          setState(() => _selected = _avatar);

          PrintHelper.printWarning(" pilih avatar: $_selected");

          widget.onTap != null ? widget.onTap!(_selected) : null;
        },
        child: Stack(
          alignment: .topCenter,
          children: [
            Container(
              alignment: Alignment.center,
              height: 64,
              width: 64,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: _color,
              ),
              child: ImageNetwork(
                imageUrl: _icon,
                boxFit: BoxFit.cover,
                width: 56,
                radius: 28,
                imgError: _iconErr,
                onlyIcon: true,
              ),
            ),
            // Text("${_selected.id}"),
          ],
        ),
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
