part of '../widgets.dart';

class BodyFormToken extends StatelessWidget {
  final void Function(String) callback;

  const BodyFormToken({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<VerifyBloc, VerifyState>(
            builder: (context, state) {
              return Column(
                mainAxisSize: .min,
                children: [
                  FormInputOtp(
                    length: 4,
                    isError: state.statusSendOtp == Status.failed,
                    onVerify: (otp) {
                      FocusScope.of(context).unfocus();
                      callback(otp);
                    },
                  ),

                  /// Error Info Token
                  Visibility(
                    visible: state.statusSendOtp == Status.failed,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                      child: Text(
                        state.errorMessage,
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.error,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),

          SizedBox(height: 32),

          showTimeOrButtonResendOTP(context),
        ],
      ),
    );
  }

  Widget showTimeOrButtonResendOTP(BuildContext context) {
    final _stateTimer = context.watch<TimerCubit>().state;

    return SwitchChildWidgets(
      tipe: _stateTimer.status == TimerStatus.running
          ? SwitchWidgets.child1
          : SwitchWidgets.child2,
      child1: Container(
        height: 40,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppTheme.isDark(context) ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const ShowTimerCountdown(),
      ),
      child2: ButtonsWidget(
        color: Colors.transparent,
        height: 40,
        onTap: () async => await VerifyFlows.getOtpCode(context),
        isWide: true,
        child: Text(
          LocaleKeys.verify_resend_otp.tr(),
          style: AppTextStyles.button.copyWith(color: AppColors.primary),
        ),
      ),
    );
  }
}
