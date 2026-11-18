import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Channel the OTP is delivered through.
enum VerifyChannel { whatsapp, email }

/// Which channel and which contact an OTP flow targets.
extension VerifyModelChannel on VerifyModel {
  /// Email flows: login with email, change email (old + new).
  /// Everything else (login by phone, register, change phone, delete account)
  /// goes over WhatsApp.
  VerifyChannel get channel => switch (fromPage) {
    FromPage.changeEmail || FromPage.changeNewEmail => VerifyChannel.email,
    FromPage.login when email.isNotEmpty => VerifyChannel.email,
    _ => VerifyChannel.whatsapp,
  };

  bool get isEmailChannel => channel == VerifyChannel.email;

  /// Raw (unmasked) contact the OTP is sent to.
  String get otpTarget => switch (fromPage) {
    FromPage.changeNewNumber => newPhone,
    FromPage.changeNewEmail => newEmail,
    FromPage.changeEmail => email,
    FromPage.login when email.isNotEmpty => email,
    _ => phone,
  };

  /// [otpTarget] masked according to the user's privacy setting.
  String get maskedOtpTarget => isEmailChannel
      ? getIt<GeneralHelper>().maskEmail(
          otpTarget,
          isMaskContact: AppSetting.isMaskContact.value,
        )
      : getIt<GeneralHelper>().maskPhone(
          otpTarget,
          isMaskContact: AppSetting.isMaskContact.value,
        );
}
