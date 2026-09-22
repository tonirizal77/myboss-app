part of '../widgets.dart';

/// Comfirm Otp Wrapper Listeners
/// - User Login/Register
/// - Update Profile User
///
class ConfirmOtpProfileListener extends StatelessWidget {
  final Widget child;

  const ConfirmOtpProfileListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        /// Get Otp
        BlocListener<ProfileBloc, ProfileState>(
          listenWhen: (previous, current) =>
              current.action == EditProfileAction.sendOtp,
          listener: (context, state) {
            // if (state.statusSendOtp == Status.loading) {
            //   getIt<LoadingHelper>().turnOnLoading();
            // } else {
            //   getIt<LoadingHelper>().turnOffLoading();
            //   if (state.statusSendOtp == Status.success) {
            //     context.pushNamed(RouteNames.newPhoneNumberPage);
            //   } else {
            //     getIt<FlushbarHelper>().showErrorFlushbar(
            //       context: context,
            //       message: state.errorMessage,
            //     );
            //   }
            // }
          },
        ),
      ],
      child: child,
    );
  }
}
