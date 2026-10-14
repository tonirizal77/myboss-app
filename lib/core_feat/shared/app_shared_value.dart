part of 'app_shareds.dart';

/// Domain-specific enums for MyBoss's own business flows (PIN management,
/// loyalty stamps, phone/email verification, profile editing, app variant).
/// Kept separate from [shared_value.dart] so this file alone (not the whole
/// shared barrel) is what needs to move when this codebase splits into a
/// reusable core vs. an app-specific core.

enum PinFlowType {
  changeEmail,
  changePhone,
  changePin,
  setNewPin,
  confirmNewPin,
  resetPin,
}

enum TypeStamps { empty, free }

/// Enum for Authentication
/// - Verifications
///
enum TypeVerify { wa, email }

enum FromPage {
  initial,
  login,
  register,
  changeProfile,
  changeNumber,
  changeEmail,
  changeNewNumber,
  changeNewEmail,
  deleteAccount,
}

enum EditProfileAction {
  cancelVerify,
  initializeFormData,
  changeProfile,
  changePhone,
  changeEmail,
  fetchAvatar,
  getOtp,
  sendOtp,
}

enum TypeApp { user, merchant }

/// Controls how the "Delete Account" flow behaves. [direct] and [pending]
/// both go through the same in-app confirmation sheet + OTP/reason
/// verification ([DeleteAccountSheetContent] -> [DeleteAccountVerifyPage])
/// - they only differ in what happens once that verification succeeds
/// (see [AccountFlows.submitDeleteAccountRequest]). [emailConfirmation] is
/// a separate flow entirely, shown right from the confirmation sheet.
///
/// - [direct]: executes the real deletion immediately
///   ([Endpoints.deleteAccountReal]) once OTP + reason verification
///   succeeds. Required for App Store Guideline 5.1.1(v) compliance for
///   most apps.
/// - [pending]: once OTP + reason verification succeeds, the account is
///   only marked pending locally ([DeleteAccountLocalState.markPending])
///   and the grace-period status page is shown
///   ([DeleteAccountStatusSheet]) - the real delete-account endpoint is
///   never called, so the request can still be cancelled from that page.
/// - [emailConfirmation]: shows instructions to email support instead of
///   deleting in-app. Apple will reject this for apps that aren't in a
///   highly-regulated industry - only switch to this mode if the app
///   qualifies for that exception.
enum DeleteAccountMode { direct, pending, emailConfirmation }
