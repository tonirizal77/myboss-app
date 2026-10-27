part of '../widgets.dart';

/// Profile card of the Account page (Figma `Account Overview`): avatar,
/// edit button, name, phone and email.
class CardAccountMember extends StatelessWidget {
  const CardAccountMember({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyBossColors.surface,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: MyBossColors.outline.withValues(alpha: 0.6),
            ),
          ),
          padding: const EdgeInsets.all(24),
          child: state.map((state) {
            if (state.statusFecthProfile == Status.loading) {
              return const SizedBox(height: 200, child: LoadingWidget());
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

  Widget _errorServer(BuildContext context, ProfileState state) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          state.errorMessage,
          style: MyBossTextStyles.body.copyWith(color: MyBossColors.danger),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        _EditButton(onTap: () => AccountFlows.goToEditProfile(context)),
      ],
    );
  }

  Widget _content(BuildContext context, ProfileState state) {
    final profile = state.profile;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _Avatar(image: profile.favatar),
            _EditButton(onTap: () => AccountFlows.goToEditProfile(context)),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          profile.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: MyBossTextStyles.titleBig1.copyWith(
            color: MyBossColors.primary,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          getIt<GeneralHelper>().maskPhone(
            profile.phone,
            isMaskContact: AppSetting.isMaskContact.value,
          ),
          style: MyBossTextStyles.bodyMedium.copyWith(
            color: MyBossColors.onSurface,
          ),
        ),
        Text(
          getIt<GeneralHelper>().maskEmail(
            profile.email,
            isMaskContact: AppSetting.isMaskContact.value,
          ),
          style: MyBossTextStyles.bodyMedium.copyWith(
            color: MyBossColors.onSurface,
          ),
        ),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    final fallback = Image.asset(Assets.avatarsMyBoss.first, fit: BoxFit.cover);

    return Container(
      width: 130,
      height: 130,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyBossColors.surfaceContainerLow,
      ),
      child: ClipOval(
        child: image.isEmpty
            ? fallback
            : Image.network(
                image,
                fit: BoxFit.cover,
                frameBuilder: (_, child, frame, _) =>
                    frame == null ? fallback : child,
                errorBuilder: (_, _, _) => fallback,
              ),
      ),
    );
  }
}

class _EditButton extends StatelessWidget {
  const _EditButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: CircleBorder(side: BorderSide(color: MyBossColors.outline)),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: SizedBox(
          width: 40,
          height: 40,
          child: Icon(
            Icons.edit_outlined,
            size: 22,
            color: MyBossColors.onSurface,
          ),
        ),
      ),
    );
  }
}
