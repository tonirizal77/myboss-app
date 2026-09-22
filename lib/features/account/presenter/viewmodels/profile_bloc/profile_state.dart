/// !for file: profile_state.dart file
part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    Type? event,
    @Default(Respons.initial) Respons respon,
    @Default('') String errorMessage,
    @Default(false) bool isError,

    /// Change Profile
    EditProfileAction? action,
    String? phone,
    String? email,

    /// Status Pengganti Event
    @Default(Status.initial) Status statusFecthProfile,
    @Default(Status.initial) Status statusFecthAvatars,
    @Default(Status.initial) Status statusUpdateProfile,

    /// Data Models
    @Default(ProfileModel()) ProfileModel profile,
    @Default(AvatarListModel()) AvatarListModel avatarList,
    @Default(ProfileEditModel()) ProfileEditModel profileEdit,
    @Default(AvatarsModel()) AvatarsModel avatars,
    @Default(GenCodeModel()) GenCodeModel genCode,
  }) = _ProfileState;
}
