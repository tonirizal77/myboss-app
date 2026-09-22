part of '../widgets.dart';

class CardStampsTop extends StatelessWidget {
  const CardStampsTop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        final _stamps = state.profile.filledStamp;

        return CardCustom(
          height: 80,
          color: AppTheme.primary(context),
          child: Row(
            spacing: 12,
            children: [
              Image.asset(
                Assets.menuStamps,
                height: 48,
                width: 48,
                // colorFilter: ColorFilter.linearToSrgbGamma(),
              ),
              Text(
                "${_stamps} ${LocaleKeys.stamps_sub_title.tr()}",
                style: AppTextStyles.titleBig1.copyWith(
                  color: AppTheme.surface(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
