part of '../widgets.dart';

class ShowTimerCountdown extends StatelessWidget {
  const ShowTimerCountdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerCubit, TimerState>(
      builder: (context, state) {
        return Visibility(
          visible: state.status == TimerStatus.running,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                LocaleKeys.verify_resend_otp.tr(),
                textAlign: TextAlign.center,
                style: AppTextStyles.subtitleBig2.copyWith(
                  color: AppColors.grey50,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                state.durationString,
                style: AppTextStyles.subtitleBig2.copyWith(
                  color: AppColors.grey50,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}
