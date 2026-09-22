part of 'app_shareds.dart';

/// Domain-specific enums for Hayo's own business flows (PIN management,
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

/// Controls how the "Delete Account" flow behaves.
/// - [direct]: deletes the account immediately in-app via API. Required
///   for App Store Guideline 5.1.1(v) compliance for most apps.
/// - [emailConfirmation]: shows instructions to email support instead of
///   deleting in-app. Apple will reject this for apps that aren't in a
///   highly-regulated industry - only switch to this mode if the app
///   qualifies for that exception.
enum DeleteAccountMode { direct, emailConfirmation }
