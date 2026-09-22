part of '../widgets.dart';

class CardAccountMember extends StatelessWidget {
  const CardAccountMember({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final _level = state.profile.level == 0 ? 1 : state.profile.level;

        final _bgImage = _level == 3
            ? Assets.icBgCoolestAc
            : _level == 2
            ? Assets.icBgCoolerAc
            : Assets.icBgCoolAc;

        return Container(
          height: 320,
          width: Responsive.minWidthMobile,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 0.5, color: AppTheme.surface(context)),
            image: DecorationImage(
              image: AssetImage(_bgImage),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                AppTheme.isDark(context)
                    ? AppTheme.primary(context).withGreen(50)
                    : AppTheme.primary(context),
                BlendMode.overlay,
              ),
              invertColors: AppTheme.isDark(context) ? true : false,
            ),
          ),
          padding: EdgeInsets.all(24),
          child: state.map((state) {
            if (state.statusFecthProfile == Status.loading) {
              return LoadingWidget();
            }

            if (state.statusFecthProfile == Status.failed) {
              return _errorServer(context, state);
            }

            return _content(context, state);
          }),
        );
      },
    );
  }

  Column _errorServer(BuildContext context, ProfileState state) {
    return Column(
      mainAxisAlignment: .spaceEvenly,
      children: [
        Text("${state.errorMessage}"),

        /// todo: sementara
        Buttons(
          height: 40,
          width: 40,
          isBorder: false,
          isShadow: true,
          bgColor: AppTheme.surface(context),
          onTap: () {
            // PrintHelper.inspectx(state);
            AccountFlows.goToEditProfile(context);
          },
          child: Icon(Icons.edit_rounded),
        ),
      ],
    );
  }

  Column _content(BuildContext context, ProfileState state) {
    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      spacing: 16,
      children: [
        /// Top
        Row(
          crossAxisAlignment: .start,
          mainAxisAlignment: .spaceBetween,
          children: [
            /// Left
            _imageAvatar(context, state.profile.favatar),

            /// Right
            _rightButton(context, state),
          ],
        ),

        /// Bottom
        _nameAndLevel(state),
      ],
    );
  }

  Column _nameAndLevel(ProfileState state) {
    final _level = state.profile.level == 0 ? 1 : state.profile.level;

    final _tierLabel = state.profile.levelName.isEmpty
        ? _level == 3
              ? LocaleKeys.home_tier_label3.tr()
              : _level == 2
              ? LocaleKeys.home_tier_label2.tr()
              : LocaleKeys.home_tier_label1.tr()
        : state.profile.levelName;

    final _tierLabelColor = AppTextStyles.titleBig2.copyWith(
      color: _level == 3
          ? AppColors.coolest
          : _level == 2
          ? AppColors.cooler
          : AppColors.cool,
    );

    final _iconTier = _level == 3
        ? Assets.icTierCoolest
        : _level == 2
        ? Assets.icTierCooler
        : Assets.icTierCool;

    return Column(
      crossAxisAlignment: .start,
      mainAxisAlignment: .center,
      mainAxisSize: .min,
      spacing: 12,
      children: [
        Text(
          state.profile.name,
          style: AppTextStyles.titleBig1,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),

        Column(
          mainAxisSize: .min,
          crossAxisAlignment: .start,
          children: [
            Text(
              getIt<GeneralHelper>().maskPhone(state.profile.phone, isMaskContact: AppSetting.isMaskContact.value),
              style: AppTextStyles.caption,
            ),
            Text(
              getIt<GeneralHelper>().maskEmail(state.profile.email, isMaskContact: AppSetting.isMaskContact.value),
              style: AppTextStyles.caption,
            ),
          ],
        ),

        Row(
          spacing: 8,
          children: [
            Text(_tierLabel, style: _tierLabelColor),
            Image.asset(_iconTier, height: 32),
          ],
        ),
      ],
    );
  }

  CircleImage _imageAvatar(BuildContext context, String _image) {
    return CircleImage(
      color: AppColors.primary,
      size: 120,
      border: Border.all(color: AppTheme.surface(context), width: 5),
      child: ImageNetwork(
        radius: 60,
        shape: BoxShape.circle,
        imageUrl: _image,
        imgError: Assets.avatar1,
        height: 120,
        width: 120,
        boxFit: BoxFit.fill,
        onlyIcon: true,
      ),
    );
  }

  Column _rightButton(BuildContext context, ProfileState state) {
    return Column(
      spacing: 16,
      children: [
        Buttons(
          height: 40,
          width: 40,
          isBorder: false,
          isShadow: true,
          bgColor: AppTheme.surface(context),
          onTap: () => AccountFlows.goToEditProfile(context),
          child: Icon(Icons.edit_rounded),
        ),

        Visibility(
          visible: Responsive.isMobile(context),
          child: const ButtonMode(),
        ),
      ],
    );
  }
}
