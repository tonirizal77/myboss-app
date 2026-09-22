import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

class VerifyFlows {
  VerifyFlows._();

  static VerifyModel get verifyData => getIt<VerifyBloc>().state.verifyData;
  static VerifyState get state => getIt<VerifyBloc>().state;

  /// === Verify ===
  ///
  /// 1. Verify Initial Login
  static void verifyLogin(
    BuildContext context, {
    required String phone,
    required FromPage fromPage,
  }) {
    // - Verify Event Initial Data
    // - and then Goto Verifications Page with listener
    context.read<VerifyBloc>().add(
      VerifyEvent.initial(VerifyModel(phone: phone, fromPage: fromPage)),
    );
  }

  /// 2. Verify Initial Register
  static void verifyRegister(
    BuildContext context, {
    required RegistrationModel register,
    required FromPage fromPage,
  }) {
    // - Verify Event Initial Data
    // - and then Goto Verifications Page with listener
    context.read<VerifyBloc>().add(
      VerifyEvent.initial(
        VerifyModel(
          phone: register.phone,
          register: register,
          fromPage: fromPage,
        ),
      ),
    );
  }

  /// 3. Verify Initial Edit Profile
  static void verifyEditProfile(
    BuildContext context, {
    required String phone,
    String? email,
    required FromPage fromPage,
  }) {
    // - Verify Event Initial Data
    // - and then Goto Verifications Page with listener
    context.read<VerifyBloc>().add(
      VerifyEvent.initial(
        VerifyModel(phone: phone, email: email ?? "", fromPage: fromPage),
      ),
    );
  }

  /// 4. Verify Initial New Phone
  static void verifyNewPhone(
    BuildContext context, {
    required String phone,
    required FromPage fromPage,
  }) {
    // - Verify Event Initial Data
    // - and then Goto Verifications Page with listener
    context.read<VerifyBloc>().add(
      VerifyEvent.initial(
        verifyData.copyWith(newPhone: phone, fromPage: fromPage),
      ),
    );
  }

  /// 4. Verify Initial New Phone
  static void verifyNewEmail(
    BuildContext context, {
    required String email,
    required FromPage fromPage,
  }) {
    // - Verify Event Initial Data
    // - and then Goto Verifications Page with listener
    context.read<VerifyBloc>().add(
      VerifyEvent.initial(
        verifyData.copyWith(newEmail: email, fromPage: fromPage),
      ),
    );
  }

  /// === OTP ===
  ///
  /// 1. Get Otp
  static Future<void> getOtpCode(BuildContext context) async {
    // - Switch Body
    ParamOtp _param = ParamOtp(url: "", body: {});

    final _fromPage = verifyData.fromPage;

    if (_fromPage == FromPage.login) {
      _param = ParamOtp(
        body: {'phone': verifyData.phone},
        url: Endpoints.signInSendCode,
      );
    } else if (_fromPage == FromPage.register) {
      _param = ParamOtp(
        body: {'phone': verifyData.phone},
        url: Endpoints.signUpSendCode,
      );
    } else if (_fromPage == FromPage.changeNumber) {
      _param = ParamOtp(
        body: {'phone': verifyData.phone},
        url: Endpoints.verifyOldGetOtp,
      );
    } else if (_fromPage == FromPage.changeEmail) {
      _param = ParamOtp(
        body: {'email': verifyData.email},
        url: Endpoints.verifyOldGetOtp,
      );
    } else if (_fromPage == FromPage.changeNewNumber) {
      final String _key =
          getIt<VerifyBloc>().state.result['data']?['key'] ?? "";
      _param = ParamOtp(
        body: {'phone': verifyData.newPhone, 'key': _key},
        url: Endpoints.verifyNewGetOtpPhone,
      );
    } else if (_fromPage == FromPage.changeNewEmail) {
      final String _key =
          getIt<VerifyBloc>().state.result['data']?['key'] ?? "";
      _param = ParamOtp(
        body: {'email': verifyData.newEmail, 'key': _key},
        url: Endpoints.verifyNewGetOtpEmail,
      );
    }

    PrintHelper.printData("__param GetOtp: ${_param.toString()}");

    if (_fromPage == FromPage.changeNewNumber ||
        _fromPage == FromPage.changeNewEmail) {
      context.read<VerifyBloc>().add(VerifyEvent.getNewOtp(_param));
    } else {
      context.read<VerifyBloc>().add(VerifyEvent.getOtp(_param));
    }
  }

  /// 2. Send Otp
  static Future<void> sendOtpCode(BuildContext context, String otpCode) async {
    // - Switch Body
    ParamOtp _param = ParamOtp(url: "", body: {});
    final _fromPage = verifyData.fromPage;

    if (_fromPage == FromPage.login) {
      _param = ParamOtp(
        url: Endpoints.signIn,
        body: {'phone': verifyData.phone, 'otp_code': otpCode},
      );
    } else if (_fromPage == FromPage.register) {
      _param = ParamOtp(
        url: Endpoints.signUp,
        body: {...verifyData.register.toJson(), "otp_code": otpCode},
      );
    } else if (_fromPage == FromPage.changeNumber) {
      _param = ParamOtp(
        url: Endpoints.verifyOldSendOtp,
        body: {'phone': verifyData.phone, "otp_code": otpCode},
      );
    } else if (_fromPage == FromPage.changeEmail) {
      _param = ParamOtp(
        url: Endpoints.verifyOldSendOtp,
        body: {'email': verifyData.email, "otp_code": otpCode},
      );
    } else if (_fromPage == FromPage.changeNewNumber) {
      _param = ParamOtp(
        url: Endpoints.verifyNewSendOtp,
        body: {'phone': verifyData.newPhone, "otp_code": otpCode},
      );
    } else if (_fromPage == FromPage.changeNewEmail) {
      _param = ParamOtp(
        url: Endpoints.verifyNewSendOtp,
        body: {'email': verifyData.newEmail, "otp_code": otpCode},
      );
    }

    context.read<VerifyBloc>().add(VerifyEvent.sendOtp(_param));
  }
}
