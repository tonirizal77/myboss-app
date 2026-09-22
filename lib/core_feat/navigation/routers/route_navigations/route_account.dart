part of 'route_navigation.dart';

final class RouteAccount {
  RouteAccount._();

  static final List<RouteBase> routes = [
    GoRoute(
      path: "/${RouteNames.editProfilePage}",
      name: RouteNames.editProfilePage,
      builder: (context, state) => const EditProfilePage(),
    ),

    GoRoute(
      path: "/${RouteNames.verificationProfilePage}",
      name: RouteNames.verificationProfilePage,
      builder: (context, state) => const VerificationProfilePage(),
    ),

    GoRoute(
      path: '/${RouteNames.confirmOtpProfilePage}',
      name: RouteNames.confirmOtpProfilePage,
      builder: (context, state) {
        return const ConfirmOtpProfileListener(child: ConfirmOtpProfilePage());
      },
    ),

    GoRoute(
      path: "/${RouteNames.newPhoneNumberPage}",
      name: RouteNames.newPhoneNumberPage,
      builder: (context, state) => const ChangeNewPhonePage(),
    ),

    GoRoute(
      path: "/${RouteNames.newEmailPage}",
      name: RouteNames.newEmailPage,
      builder: (context, state) => const ChangeNewEmailPage(),
    ),

    GoRoute(
      path: "/${RouteNames.aboutUsPage}",
      name: RouteNames.aboutUsPage,
      builder: (context, state) => const AboutUsPage(),
    ),

    GoRoute(
      path: "/${RouteNames.tncPage}",
      name: RouteNames.tncPage,
      builder: (context, state) => const TncPage(),
    ),

    GoRoute(
      path: "/${RouteNames.faqPage}",
      name: RouteNames.faqPage,
      builder: (context, state) => const FaqPage(),
    ),

    GoRoute(
      path: "/${RouteNames.voucherPage}",
      name: RouteNames.voucherPage,
      builder: (context, state) => const VoucherPage(),
    ),

    GoRoute(
      path: "/${RouteNames.stampsHistoryPage}",
      name: RouteNames.stampsHistoryPage,
      builder: (context, state) => const StampsHistoryPage(),
    ),
  ];
}
