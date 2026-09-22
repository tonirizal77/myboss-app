import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

/// Handlers Event
part 'events/event_get_profile.dart';
part 'events/event_get_avatar.dart';
part 'events/event_initial_form_field.dart';
part 'events/event_update_form_field.dart';
part 'events/event_update_data_verify.dart';
part 'events/event_update_profile.dart';
part 'events/event_update_profile_phoneOrEmail.dart';
part 'events/event_gen_code.dart';
part 'events/event_reset_profile.dart';

class ProfileBloc extends HydratedBloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState()) {
    on<_EventGetProfile>(_onEventGetProfile);
    on<_EventGetAvatar>(_onEventGetAvatar);
    on<_EventInitialFormField>(_onEventInitialFormField);
    on<_EventUpdateFormField>(_onEventUpdateFormField);
    on<_EventUpdateDataVerify>(_onEventUpdateDataVerify);
    on<_EventUpdateProfile>(_onEventUpdateProfile);
    on<_EventUpdateProfilePhoneOrEmail>(_onEventUpdateProfilePhoneOrEmail);
    on<_EventGenCode>(_onEventGenCode);
    on<_EventResetProfile>(_onEventResetProfile);
  }

  @override
  ProfileState? fromJson(Map<String, dynamic> json) {
    return state.copyWith(
      profile: ProfileModel.fromJson(json['profile']),
      avatarList: AvatarListModel.fromJson(json['avatar_list']),
    );
  }

  @override
  Map<String, dynamic>? toJson(ProfileState state) {
    return {
      'profile': state.profile.toJson(),
      'avatar_list': state.avatarList.toJson(),
    };
  }
}
