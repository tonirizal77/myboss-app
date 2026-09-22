// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EventGetProfile value)?  getProfile,TResult Function( _EventGetAvatar value)?  getAvatar,TResult Function( _EventGenCode value)?  genCode,TResult Function( _EventInitialFormField value)?  initialFormField,TResult Function( _EventUpdateFormField value)?  updateFormField,TResult Function( _EventUpdateProfile value)?  updateProfile,TResult Function( _EventUpdateDataVerify value)?  updateDataVerify,TResult Function( _EventUpdateProfilePhoneOrEmail value)?  updateProfilePhoneOrEmail,TResult Function( _EventResetProfile value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventGetProfile() when getProfile != null:
return getProfile(_that);case _EventGetAvatar() when getAvatar != null:
return getAvatar(_that);case _EventGenCode() when genCode != null:
return genCode(_that);case _EventInitialFormField() when initialFormField != null:
return initialFormField(_that);case _EventUpdateFormField() when updateFormField != null:
return updateFormField(_that);case _EventUpdateProfile() when updateProfile != null:
return updateProfile(_that);case _EventUpdateDataVerify() when updateDataVerify != null:
return updateDataVerify(_that);case _EventUpdateProfilePhoneOrEmail() when updateProfilePhoneOrEmail != null:
return updateProfilePhoneOrEmail(_that);case _EventResetProfile() when reset != null:
return reset(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EventGetProfile value)  getProfile,required TResult Function( _EventGetAvatar value)  getAvatar,required TResult Function( _EventGenCode value)  genCode,required TResult Function( _EventInitialFormField value)  initialFormField,required TResult Function( _EventUpdateFormField value)  updateFormField,required TResult Function( _EventUpdateProfile value)  updateProfile,required TResult Function( _EventUpdateDataVerify value)  updateDataVerify,required TResult Function( _EventUpdateProfilePhoneOrEmail value)  updateProfilePhoneOrEmail,required TResult Function( _EventResetProfile value)  reset,}){
final _that = this;
switch (_that) {
case _EventGetProfile():
return getProfile(_that);case _EventGetAvatar():
return getAvatar(_that);case _EventGenCode():
return genCode(_that);case _EventInitialFormField():
return initialFormField(_that);case _EventUpdateFormField():
return updateFormField(_that);case _EventUpdateProfile():
return updateProfile(_that);case _EventUpdateDataVerify():
return updateDataVerify(_that);case _EventUpdateProfilePhoneOrEmail():
return updateProfilePhoneOrEmail(_that);case _EventResetProfile():
return reset(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EventGetProfile value)?  getProfile,TResult? Function( _EventGetAvatar value)?  getAvatar,TResult? Function( _EventGenCode value)?  genCode,TResult? Function( _EventInitialFormField value)?  initialFormField,TResult? Function( _EventUpdateFormField value)?  updateFormField,TResult? Function( _EventUpdateProfile value)?  updateProfile,TResult? Function( _EventUpdateDataVerify value)?  updateDataVerify,TResult? Function( _EventUpdateProfilePhoneOrEmail value)?  updateProfilePhoneOrEmail,TResult? Function( _EventResetProfile value)?  reset,}){
final _that = this;
switch (_that) {
case _EventGetProfile() when getProfile != null:
return getProfile(_that);case _EventGetAvatar() when getAvatar != null:
return getAvatar(_that);case _EventGenCode() when genCode != null:
return genCode(_that);case _EventInitialFormField() when initialFormField != null:
return initialFormField(_that);case _EventUpdateFormField() when updateFormField != null:
return updateFormField(_that);case _EventUpdateProfile() when updateProfile != null:
return updateProfile(_that);case _EventUpdateDataVerify() when updateDataVerify != null:
return updateDataVerify(_that);case _EventUpdateProfilePhoneOrEmail() when updateProfilePhoneOrEmail != null:
return updateProfilePhoneOrEmail(_that);case _EventResetProfile() when reset != null:
return reset(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getProfile,TResult Function()?  getAvatar,TResult Function()?  genCode,TResult Function( ProfileEditModel data)?  initialFormField,TResult Function( ProfileEditModel data)?  updateFormField,TResult Function( DataMap param)?  updateProfile,TResult Function( EditProfileAction action,  String? phone,  String? email)?  updateDataVerify,TResult Function( DataMap param)?  updateProfilePhoneOrEmail,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventGetProfile() when getProfile != null:
return getProfile();case _EventGetAvatar() when getAvatar != null:
return getAvatar();case _EventGenCode() when genCode != null:
return genCode();case _EventInitialFormField() when initialFormField != null:
return initialFormField(_that.data);case _EventUpdateFormField() when updateFormField != null:
return updateFormField(_that.data);case _EventUpdateProfile() when updateProfile != null:
return updateProfile(_that.param);case _EventUpdateDataVerify() when updateDataVerify != null:
return updateDataVerify(_that.action,_that.phone,_that.email);case _EventUpdateProfilePhoneOrEmail() when updateProfilePhoneOrEmail != null:
return updateProfilePhoneOrEmail(_that.param);case _EventResetProfile() when reset != null:
return reset();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getProfile,required TResult Function()  getAvatar,required TResult Function()  genCode,required TResult Function( ProfileEditModel data)  initialFormField,required TResult Function( ProfileEditModel data)  updateFormField,required TResult Function( DataMap param)  updateProfile,required TResult Function( EditProfileAction action,  String? phone,  String? email)  updateDataVerify,required TResult Function( DataMap param)  updateProfilePhoneOrEmail,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _EventGetProfile():
return getProfile();case _EventGetAvatar():
return getAvatar();case _EventGenCode():
return genCode();case _EventInitialFormField():
return initialFormField(_that.data);case _EventUpdateFormField():
return updateFormField(_that.data);case _EventUpdateProfile():
return updateProfile(_that.param);case _EventUpdateDataVerify():
return updateDataVerify(_that.action,_that.phone,_that.email);case _EventUpdateProfilePhoneOrEmail():
return updateProfilePhoneOrEmail(_that.param);case _EventResetProfile():
return reset();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getProfile,TResult? Function()?  getAvatar,TResult? Function()?  genCode,TResult? Function( ProfileEditModel data)?  initialFormField,TResult? Function( ProfileEditModel data)?  updateFormField,TResult? Function( DataMap param)?  updateProfile,TResult? Function( EditProfileAction action,  String? phone,  String? email)?  updateDataVerify,TResult? Function( DataMap param)?  updateProfilePhoneOrEmail,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _EventGetProfile() when getProfile != null:
return getProfile();case _EventGetAvatar() when getAvatar != null:
return getAvatar();case _EventGenCode() when genCode != null:
return genCode();case _EventInitialFormField() when initialFormField != null:
return initialFormField(_that.data);case _EventUpdateFormField() when updateFormField != null:
return updateFormField(_that.data);case _EventUpdateProfile() when updateProfile != null:
return updateProfile(_that.param);case _EventUpdateDataVerify() when updateDataVerify != null:
return updateDataVerify(_that.action,_that.phone,_that.email);case _EventUpdateProfilePhoneOrEmail() when updateProfilePhoneOrEmail != null:
return updateProfilePhoneOrEmail(_that.param);case _EventResetProfile() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _EventGetProfile implements ProfileEvent {
  const _EventGetProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGetProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.getProfile()';
}


}




/// @nodoc


class _EventGetAvatar implements ProfileEvent {
  const _EventGetAvatar();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGetAvatar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.getAvatar()';
}


}




/// @nodoc


class _EventGenCode implements ProfileEvent {
  const _EventGenCode();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGenCode);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.genCode()';
}


}




/// @nodoc


class _EventInitialFormField implements ProfileEvent {
  const _EventInitialFormField(this.data);
  

 final  ProfileEditModel data;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventInitialFormFieldCopyWith<_EventInitialFormField> get copyWith => __$EventInitialFormFieldCopyWithImpl<_EventInitialFormField>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventInitialFormField&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileEvent.initialFormField(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EventInitialFormFieldCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EventInitialFormFieldCopyWith(_EventInitialFormField value, $Res Function(_EventInitialFormField) _then) = __$EventInitialFormFieldCopyWithImpl;
@useResult
$Res call({
 ProfileEditModel data
});


$ProfileEditModelCopyWith<$Res> get data;

}
/// @nodoc
class __$EventInitialFormFieldCopyWithImpl<$Res>
    implements _$EventInitialFormFieldCopyWith<$Res> {
  __$EventInitialFormFieldCopyWithImpl(this._self, this._then);

  final _EventInitialFormField _self;
  final $Res Function(_EventInitialFormField) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EventInitialFormField(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileEditModel,
  ));
}

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEditModelCopyWith<$Res> get data {
  
  return $ProfileEditModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _EventUpdateFormField implements ProfileEvent {
  const _EventUpdateFormField(this.data);
  

 final  ProfileEditModel data;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventUpdateFormFieldCopyWith<_EventUpdateFormField> get copyWith => __$EventUpdateFormFieldCopyWithImpl<_EventUpdateFormField>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventUpdateFormField&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileEvent.updateFormField(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EventUpdateFormFieldCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EventUpdateFormFieldCopyWith(_EventUpdateFormField value, $Res Function(_EventUpdateFormField) _then) = __$EventUpdateFormFieldCopyWithImpl;
@useResult
$Res call({
 ProfileEditModel data
});


$ProfileEditModelCopyWith<$Res> get data;

}
/// @nodoc
class __$EventUpdateFormFieldCopyWithImpl<$Res>
    implements _$EventUpdateFormFieldCopyWith<$Res> {
  __$EventUpdateFormFieldCopyWithImpl(this._self, this._then);

  final _EventUpdateFormField _self;
  final $Res Function(_EventUpdateFormField) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EventUpdateFormField(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileEditModel,
  ));
}

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEditModelCopyWith<$Res> get data {
  
  return $ProfileEditModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _EventUpdateProfile implements ProfileEvent {
  const _EventUpdateProfile(final  DataMap param): _param = param;
  

 final  DataMap _param;
 DataMap get param {
  if (_param is EqualUnmodifiableMapView) return _param;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_param);
}


/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventUpdateProfileCopyWith<_EventUpdateProfile> get copyWith => __$EventUpdateProfileCopyWithImpl<_EventUpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventUpdateProfile&&const DeepCollectionEquality().equals(other._param, _param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_param));

@override
String toString() {
  return 'ProfileEvent.updateProfile(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventUpdateProfileCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EventUpdateProfileCopyWith(_EventUpdateProfile value, $Res Function(_EventUpdateProfile) _then) = __$EventUpdateProfileCopyWithImpl;
@useResult
$Res call({
 DataMap param
});




}
/// @nodoc
class __$EventUpdateProfileCopyWithImpl<$Res>
    implements _$EventUpdateProfileCopyWith<$Res> {
  __$EventUpdateProfileCopyWithImpl(this._self, this._then);

  final _EventUpdateProfile _self;
  final $Res Function(_EventUpdateProfile) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventUpdateProfile(
null == param ? _self._param : param // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc


class _EventUpdateDataVerify implements ProfileEvent {
  const _EventUpdateDataVerify({required this.action, this.phone, this.email});
  

 final  EditProfileAction action;
 final  String? phone;
 final  String? email;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventUpdateDataVerifyCopyWith<_EventUpdateDataVerify> get copyWith => __$EventUpdateDataVerifyCopyWithImpl<_EventUpdateDataVerify>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventUpdateDataVerify&&(identical(other.action, action) || other.action == action)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,action,phone,email);

@override
String toString() {
  return 'ProfileEvent.updateDataVerify(action: $action, phone: $phone, email: $email)';
}


}

/// @nodoc
abstract mixin class _$EventUpdateDataVerifyCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EventUpdateDataVerifyCopyWith(_EventUpdateDataVerify value, $Res Function(_EventUpdateDataVerify) _then) = __$EventUpdateDataVerifyCopyWithImpl;
@useResult
$Res call({
 EditProfileAction action, String? phone, String? email
});




}
/// @nodoc
class __$EventUpdateDataVerifyCopyWithImpl<$Res>
    implements _$EventUpdateDataVerifyCopyWith<$Res> {
  __$EventUpdateDataVerifyCopyWithImpl(this._self, this._then);

  final _EventUpdateDataVerify _self;
  final $Res Function(_EventUpdateDataVerify) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? action = null,Object? phone = freezed,Object? email = freezed,}) {
  return _then(_EventUpdateDataVerify(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as EditProfileAction,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _EventUpdateProfilePhoneOrEmail implements ProfileEvent {
  const _EventUpdateProfilePhoneOrEmail(final  DataMap param): _param = param;
  

 final  DataMap _param;
 DataMap get param {
  if (_param is EqualUnmodifiableMapView) return _param;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_param);
}


/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventUpdateProfilePhoneOrEmailCopyWith<_EventUpdateProfilePhoneOrEmail> get copyWith => __$EventUpdateProfilePhoneOrEmailCopyWithImpl<_EventUpdateProfilePhoneOrEmail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventUpdateProfilePhoneOrEmail&&const DeepCollectionEquality().equals(other._param, _param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_param));

@override
String toString() {
  return 'ProfileEvent.updateProfilePhoneOrEmail(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventUpdateProfilePhoneOrEmailCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$EventUpdateProfilePhoneOrEmailCopyWith(_EventUpdateProfilePhoneOrEmail value, $Res Function(_EventUpdateProfilePhoneOrEmail) _then) = __$EventUpdateProfilePhoneOrEmailCopyWithImpl;
@useResult
$Res call({
 DataMap param
});




}
/// @nodoc
class __$EventUpdateProfilePhoneOrEmailCopyWithImpl<$Res>
    implements _$EventUpdateProfilePhoneOrEmailCopyWith<$Res> {
  __$EventUpdateProfilePhoneOrEmailCopyWithImpl(this._self, this._then);

  final _EventUpdateProfilePhoneOrEmail _self;
  final $Res Function(_EventUpdateProfilePhoneOrEmail) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventUpdateProfilePhoneOrEmail(
null == param ? _self._param : param // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc


class _EventResetProfile implements ProfileEvent {
  const _EventResetProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventResetProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.reset()';
}


}




/// @nodoc
mixin _$ProfileState {

 Type? get event; Respons get respon; String get errorMessage; bool get isError;/// Change Profile
 EditProfileAction? get action; String? get phone; String? get email;/// Status Pengganti Event
 Status get statusFecthProfile; Status get statusFecthAvatars; Status get statusUpdateProfile;/// Data Models
 ProfileModel get profile; AvatarListModel get avatarList; ProfileEditModel get profileEdit; AvatarsModel get avatars; GenCodeModel get genCode;
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileStateCopyWith<ProfileState> get copyWith => _$ProfileStateCopyWithImpl<ProfileState>(this as ProfileState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.action, action) || other.action == action)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.statusFecthProfile, statusFecthProfile) || other.statusFecthProfile == statusFecthProfile)&&(identical(other.statusFecthAvatars, statusFecthAvatars) || other.statusFecthAvatars == statusFecthAvatars)&&(identical(other.statusUpdateProfile, statusUpdateProfile) || other.statusUpdateProfile == statusUpdateProfile)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.avatarList, avatarList) || other.avatarList == avatarList)&&(identical(other.profileEdit, profileEdit) || other.profileEdit == profileEdit)&&(identical(other.avatars, avatars) || other.avatars == avatars)&&(identical(other.genCode, genCode) || other.genCode == genCode));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,isError,action,phone,email,statusFecthProfile,statusFecthAvatars,statusUpdateProfile,profile,avatarList,profileEdit,avatars,genCode);

@override
String toString() {
  return 'ProfileState(event: $event, respon: $respon, errorMessage: $errorMessage, isError: $isError, action: $action, phone: $phone, email: $email, statusFecthProfile: $statusFecthProfile, statusFecthAvatars: $statusFecthAvatars, statusUpdateProfile: $statusUpdateProfile, profile: $profile, avatarList: $avatarList, profileEdit: $profileEdit, avatars: $avatars, genCode: $genCode)';
}


}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res>  {
  factory $ProfileStateCopyWith(ProfileState value, $Res Function(ProfileState) _then) = _$ProfileStateCopyWithImpl;
@useResult
$Res call({
 Type? event, Respons respon, String errorMessage, bool isError, EditProfileAction? action, String? phone, String? email, Status statusFecthProfile, Status statusFecthAvatars, Status statusUpdateProfile, ProfileModel profile, AvatarListModel avatarList, ProfileEditModel profileEdit, AvatarsModel avatars, GenCodeModel genCode
});


$ProfileModelCopyWith<$Res> get profile;$AvatarListModelCopyWith<$Res> get avatarList;$ProfileEditModelCopyWith<$Res> get profileEdit;$AvatarsModelCopyWith<$Res> get avatars;$GenCodeModelCopyWith<$Res> get genCode;

}
/// @nodoc
class _$ProfileStateCopyWithImpl<$Res>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? isError = null,Object? action = freezed,Object? phone = freezed,Object? email = freezed,Object? statusFecthProfile = null,Object? statusFecthAvatars = null,Object? statusUpdateProfile = null,Object? profile = null,Object? avatarList = null,Object? profileEdit = null,Object? avatars = null,Object? genCode = null,}) {
  return _then(_self.copyWith(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as EditProfileAction?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,statusFecthProfile: null == statusFecthProfile ? _self.statusFecthProfile : statusFecthProfile // ignore: cast_nullable_to_non_nullable
as Status,statusFecthAvatars: null == statusFecthAvatars ? _self.statusFecthAvatars : statusFecthAvatars // ignore: cast_nullable_to_non_nullable
as Status,statusUpdateProfile: null == statusUpdateProfile ? _self.statusUpdateProfile : statusUpdateProfile // ignore: cast_nullable_to_non_nullable
as Status,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel,avatarList: null == avatarList ? _self.avatarList : avatarList // ignore: cast_nullable_to_non_nullable
as AvatarListModel,profileEdit: null == profileEdit ? _self.profileEdit : profileEdit // ignore: cast_nullable_to_non_nullable
as ProfileEditModel,avatars: null == avatars ? _self.avatars : avatars // ignore: cast_nullable_to_non_nullable
as AvatarsModel,genCode: null == genCode ? _self.genCode : genCode // ignore: cast_nullable_to_non_nullable
as GenCodeModel,
  ));
}
/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res> get profile {
  
  return $ProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarListModelCopyWith<$Res> get avatarList {
  
  return $AvatarListModelCopyWith<$Res>(_self.avatarList, (value) {
    return _then(_self.copyWith(avatarList: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEditModelCopyWith<$Res> get profileEdit {
  
  return $ProfileEditModelCopyWith<$Res>(_self.profileEdit, (value) {
    return _then(_self.copyWith(profileEdit: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarsModelCopyWith<$Res> get avatars {
  
  return $AvatarsModelCopyWith<$Res>(_self.avatars, (value) {
    return _then(_self.copyWith(avatars: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenCodeModelCopyWith<$Res> get genCode {
  
  return $GenCodeModelCopyWith<$Res>(_self.genCode, (value) {
    return _then(_self.copyWith(genCode: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  bool isError,  EditProfileAction? action,  String? phone,  String? email,  Status statusFecthProfile,  Status statusFecthAvatars,  Status statusUpdateProfile,  ProfileModel profile,  AvatarListModel avatarList,  ProfileEditModel profileEdit,  AvatarsModel avatars,  GenCodeModel genCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.isError,_that.action,_that.phone,_that.email,_that.statusFecthProfile,_that.statusFecthAvatars,_that.statusUpdateProfile,_that.profile,_that.avatarList,_that.profileEdit,_that.avatars,_that.genCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  bool isError,  EditProfileAction? action,  String? phone,  String? email,  Status statusFecthProfile,  Status statusFecthAvatars,  Status statusUpdateProfile,  ProfileModel profile,  AvatarListModel avatarList,  ProfileEditModel profileEdit,  AvatarsModel avatars,  GenCodeModel genCode)  $default,) {final _that = this;
switch (_that) {
case _ProfileState():
return $default(_that.event,_that.respon,_that.errorMessage,_that.isError,_that.action,_that.phone,_that.email,_that.statusFecthProfile,_that.statusFecthAvatars,_that.statusUpdateProfile,_that.profile,_that.avatarList,_that.profileEdit,_that.avatars,_that.genCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Type? event,  Respons respon,  String errorMessage,  bool isError,  EditProfileAction? action,  String? phone,  String? email,  Status statusFecthProfile,  Status statusFecthAvatars,  Status statusUpdateProfile,  ProfileModel profile,  AvatarListModel avatarList,  ProfileEditModel profileEdit,  AvatarsModel avatars,  GenCodeModel genCode)?  $default,) {final _that = this;
switch (_that) {
case _ProfileState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.isError,_that.action,_that.phone,_that.email,_that.statusFecthProfile,_that.statusFecthAvatars,_that.statusUpdateProfile,_that.profile,_that.avatarList,_that.profileEdit,_that.avatars,_that.genCode);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileState implements ProfileState {
  const _ProfileState({this.event, this.respon = Respons.initial, this.errorMessage = '', this.isError = false, this.action, this.phone, this.email, this.statusFecthProfile = Status.initial, this.statusFecthAvatars = Status.initial, this.statusUpdateProfile = Status.initial, this.profile = const ProfileModel(), this.avatarList = const AvatarListModel(), this.profileEdit = const ProfileEditModel(), this.avatars = const AvatarsModel(), this.genCode = const GenCodeModel()});
  

@override final  Type? event;
@override@JsonKey() final  Respons respon;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool isError;
/// Change Profile
@override final  EditProfileAction? action;
@override final  String? phone;
@override final  String? email;
/// Status Pengganti Event
@override@JsonKey() final  Status statusFecthProfile;
@override@JsonKey() final  Status statusFecthAvatars;
@override@JsonKey() final  Status statusUpdateProfile;
/// Data Models
@override@JsonKey() final  ProfileModel profile;
@override@JsonKey() final  AvatarListModel avatarList;
@override@JsonKey() final  ProfileEditModel profileEdit;
@override@JsonKey() final  AvatarsModel avatars;
@override@JsonKey() final  GenCodeModel genCode;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileStateCopyWith<_ProfileState> get copyWith => __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.action, action) || other.action == action)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.statusFecthProfile, statusFecthProfile) || other.statusFecthProfile == statusFecthProfile)&&(identical(other.statusFecthAvatars, statusFecthAvatars) || other.statusFecthAvatars == statusFecthAvatars)&&(identical(other.statusUpdateProfile, statusUpdateProfile) || other.statusUpdateProfile == statusUpdateProfile)&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.avatarList, avatarList) || other.avatarList == avatarList)&&(identical(other.profileEdit, profileEdit) || other.profileEdit == profileEdit)&&(identical(other.avatars, avatars) || other.avatars == avatars)&&(identical(other.genCode, genCode) || other.genCode == genCode));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,isError,action,phone,email,statusFecthProfile,statusFecthAvatars,statusUpdateProfile,profile,avatarList,profileEdit,avatars,genCode);

@override
String toString() {
  return 'ProfileState(event: $event, respon: $respon, errorMessage: $errorMessage, isError: $isError, action: $action, phone: $phone, email: $email, statusFecthProfile: $statusFecthProfile, statusFecthAvatars: $statusFecthAvatars, statusUpdateProfile: $statusUpdateProfile, profile: $profile, avatarList: $avatarList, profileEdit: $profileEdit, avatars: $avatars, genCode: $genCode)';
}


}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(_ProfileState value, $Res Function(_ProfileState) _then) = __$ProfileStateCopyWithImpl;
@override @useResult
$Res call({
 Type? event, Respons respon, String errorMessage, bool isError, EditProfileAction? action, String? phone, String? email, Status statusFecthProfile, Status statusFecthAvatars, Status statusUpdateProfile, ProfileModel profile, AvatarListModel avatarList, ProfileEditModel profileEdit, AvatarsModel avatars, GenCodeModel genCode
});


@override $ProfileModelCopyWith<$Res> get profile;@override $AvatarListModelCopyWith<$Res> get avatarList;@override $ProfileEditModelCopyWith<$Res> get profileEdit;@override $AvatarsModelCopyWith<$Res> get avatars;@override $GenCodeModelCopyWith<$Res> get genCode;

}
/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? isError = null,Object? action = freezed,Object? phone = freezed,Object? email = freezed,Object? statusFecthProfile = null,Object? statusFecthAvatars = null,Object? statusUpdateProfile = null,Object? profile = null,Object? avatarList = null,Object? profileEdit = null,Object? avatars = null,Object? genCode = null,}) {
  return _then(_ProfileState(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as EditProfileAction?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,statusFecthProfile: null == statusFecthProfile ? _self.statusFecthProfile : statusFecthProfile // ignore: cast_nullable_to_non_nullable
as Status,statusFecthAvatars: null == statusFecthAvatars ? _self.statusFecthAvatars : statusFecthAvatars // ignore: cast_nullable_to_non_nullable
as Status,statusUpdateProfile: null == statusUpdateProfile ? _self.statusUpdateProfile : statusUpdateProfile // ignore: cast_nullable_to_non_nullable
as Status,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileModel,avatarList: null == avatarList ? _self.avatarList : avatarList // ignore: cast_nullable_to_non_nullable
as AvatarListModel,profileEdit: null == profileEdit ? _self.profileEdit : profileEdit // ignore: cast_nullable_to_non_nullable
as ProfileEditModel,avatars: null == avatars ? _self.avatars : avatars // ignore: cast_nullable_to_non_nullable
as AvatarsModel,genCode: null == genCode ? _self.genCode : genCode // ignore: cast_nullable_to_non_nullable
as GenCodeModel,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res> get profile {
  
  return $ProfileModelCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarListModelCopyWith<$Res> get avatarList {
  
  return $AvatarListModelCopyWith<$Res>(_self.avatarList, (value) {
    return _then(_self.copyWith(avatarList: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEditModelCopyWith<$Res> get profileEdit {
  
  return $ProfileEditModelCopyWith<$Res>(_self.profileEdit, (value) {
    return _then(_self.copyWith(profileEdit: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarsModelCopyWith<$Res> get avatars {
  
  return $AvatarsModelCopyWith<$Res>(_self.avatars, (value) {
    return _then(_self.copyWith(avatars: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GenCodeModelCopyWith<$Res> get genCode {
  
  return $GenCodeModelCopyWith<$Res>(_self.genCode, (value) {
    return _then(_self.copyWith(genCode: value));
  });
}
}

// dart format on
