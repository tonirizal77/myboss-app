/// !for file: profile_event.dart file
part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _EventGetProfile;
  const factory ProfileEvent.getAvatar() = _EventGetAvatar;
  const factory ProfileEvent.genCode() = _EventGenCode;
  const factory ProfileEvent.initialFormField(ProfileEditModel data) =
      _EventInitialFormField;
  const factory ProfileEvent.updateFormField(ProfileEditModel data) =
      _EventUpdateFormField;
  const factory ProfileEvent.updateProfile(DataMap param) = _EventUpdateProfile;
  const factory ProfileEvent.updateDataVerify({
    required EditProfileAction action,
    String? phone,
    String? email,
  }) = _EventUpdateDataVerify;

  const factory ProfileEvent.updateProfilePhoneOrEmail(DataMap param) =
      _EventUpdateProfilePhoneOrEmail;

  /// Reset to guest state on logout/delete account
  const factory ProfileEvent.reset() = _EventResetProfile;
}
