// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MenuEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuEvent()';
}


}

/// @nodoc
class $MenuEventCopyWith<$Res>  {
$MenuEventCopyWith(MenuEvent _, $Res Function(MenuEvent) __);
}


/// Adds pattern-matching-related methods to [MenuEvent].
extension MenuEventPatterns on MenuEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _EventListMenuYogurt value)?  menuYogurt,TResult Function( _EventListMenuToping value)?  menuToping,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _EventListMenuYogurt() when menuYogurt != null:
return menuYogurt(_that);case _EventListMenuToping() when menuToping != null:
return menuToping(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _EventListMenuYogurt value)  menuYogurt,required TResult Function( _EventListMenuToping value)  menuToping,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _EventListMenuYogurt():
return menuYogurt(_that);case _EventListMenuToping():
return menuToping(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _EventListMenuYogurt value)?  menuYogurt,TResult? Function( _EventListMenuToping value)?  menuToping,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _EventListMenuYogurt() when menuYogurt != null:
return menuYogurt(_that);case _EventListMenuToping() when menuToping != null:
return menuToping(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( DataMap param)?  menuYogurt,TResult Function( DataMap param)?  menuToping,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _EventListMenuYogurt() when menuYogurt != null:
return menuYogurt(_that.param);case _EventListMenuToping() when menuToping != null:
return menuToping(_that.param);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( DataMap param)  menuYogurt,required TResult Function( DataMap param)  menuToping,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _EventListMenuYogurt():
return menuYogurt(_that.param);case _EventListMenuToping():
return menuToping(_that.param);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( DataMap param)?  menuYogurt,TResult? Function( DataMap param)?  menuToping,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _EventListMenuYogurt() when menuYogurt != null:
return menuYogurt(_that.param);case _EventListMenuToping() when menuToping != null:
return menuToping(_that.param);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MenuEvent {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MenuEvent.initial()';
}


}




/// @nodoc


class _EventListMenuYogurt implements MenuEvent {
   _EventListMenuYogurt({final  DataMap param = const {}}): _param = param;
  

 final  DataMap _param;
@JsonKey() DataMap get param {
  if (_param is EqualUnmodifiableMapView) return _param;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_param);
}


/// Create a copy of MenuEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventListMenuYogurtCopyWith<_EventListMenuYogurt> get copyWith => __$EventListMenuYogurtCopyWithImpl<_EventListMenuYogurt>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventListMenuYogurt&&const DeepCollectionEquality().equals(other._param, _param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_param));

@override
String toString() {
  return 'MenuEvent.menuYogurt(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventListMenuYogurtCopyWith<$Res> implements $MenuEventCopyWith<$Res> {
  factory _$EventListMenuYogurtCopyWith(_EventListMenuYogurt value, $Res Function(_EventListMenuYogurt) _then) = __$EventListMenuYogurtCopyWithImpl;
@useResult
$Res call({
 DataMap param
});




}
/// @nodoc
class __$EventListMenuYogurtCopyWithImpl<$Res>
    implements _$EventListMenuYogurtCopyWith<$Res> {
  __$EventListMenuYogurtCopyWithImpl(this._self, this._then);

  final _EventListMenuYogurt _self;
  final $Res Function(_EventListMenuYogurt) _then;

/// Create a copy of MenuEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventListMenuYogurt(
param: null == param ? _self._param : param // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc


class _EventListMenuToping implements MenuEvent {
  const _EventListMenuToping({final  DataMap param = const {}}): _param = param;
  

 final  DataMap _param;
@JsonKey() DataMap get param {
  if (_param is EqualUnmodifiableMapView) return _param;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_param);
}


/// Create a copy of MenuEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventListMenuTopingCopyWith<_EventListMenuToping> get copyWith => __$EventListMenuTopingCopyWithImpl<_EventListMenuToping>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventListMenuToping&&const DeepCollectionEquality().equals(other._param, _param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_param));

@override
String toString() {
  return 'MenuEvent.menuToping(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventListMenuTopingCopyWith<$Res> implements $MenuEventCopyWith<$Res> {
  factory _$EventListMenuTopingCopyWith(_EventListMenuToping value, $Res Function(_EventListMenuToping) _then) = __$EventListMenuTopingCopyWithImpl;
@useResult
$Res call({
 DataMap param
});




}
/// @nodoc
class __$EventListMenuTopingCopyWithImpl<$Res>
    implements _$EventListMenuTopingCopyWith<$Res> {
  __$EventListMenuTopingCopyWithImpl(this._self, this._then);

  final _EventListMenuToping _self;
  final $Res Function(_EventListMenuToping) _then;

/// Create a copy of MenuEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventListMenuToping(
param: null == param ? _self._param : param // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc
mixin _$MenuState {

 Type? get event; Respons get respon; String get errorMessage;/// Data Models
 MenuYogurtModel get menuYogurt; MenuTopingModel get menuToping;
/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuStateCopyWith<MenuState> get copyWith => _$MenuStateCopyWithImpl<MenuState>(this as MenuState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.menuYogurt, menuYogurt) || other.menuYogurt == menuYogurt)&&(identical(other.menuToping, menuToping) || other.menuToping == menuToping));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,menuYogurt,menuToping);

@override
String toString() {
  return 'MenuState(event: $event, respon: $respon, errorMessage: $errorMessage, menuYogurt: $menuYogurt, menuToping: $menuToping)';
}


}

/// @nodoc
abstract mixin class $MenuStateCopyWith<$Res>  {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) _then) = _$MenuStateCopyWithImpl;
@useResult
$Res call({
 Type? event, Respons respon, String errorMessage, MenuYogurtModel menuYogurt, MenuTopingModel menuToping
});


$MenuYogurtModelCopyWith<$Res> get menuYogurt;$MenuTopingModelCopyWith<$Res> get menuToping;

}
/// @nodoc
class _$MenuStateCopyWithImpl<$Res>
    implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._self, this._then);

  final MenuState _self;
  final $Res Function(MenuState) _then;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? menuYogurt = null,Object? menuToping = null,}) {
  return _then(_self.copyWith(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,menuYogurt: null == menuYogurt ? _self.menuYogurt : menuYogurt // ignore: cast_nullable_to_non_nullable
as MenuYogurtModel,menuToping: null == menuToping ? _self.menuToping : menuToping // ignore: cast_nullable_to_non_nullable
as MenuTopingModel,
  ));
}
/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MenuYogurtModelCopyWith<$Res> get menuYogurt {
  
  return $MenuYogurtModelCopyWith<$Res>(_self.menuYogurt, (value) {
    return _then(_self.copyWith(menuYogurt: value));
  });
}/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MenuTopingModelCopyWith<$Res> get menuToping {
  
  return $MenuTopingModelCopyWith<$Res>(_self.menuToping, (value) {
    return _then(_self.copyWith(menuToping: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuState].
extension MenuStatePatterns on MenuState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuState value)  $default,){
final _that = this;
switch (_that) {
case _MenuState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuState value)?  $default,){
final _that = this;
switch (_that) {
case _MenuState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  MenuYogurtModel menuYogurt,  MenuTopingModel menuToping)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.menuYogurt,_that.menuToping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  MenuYogurtModel menuYogurt,  MenuTopingModel menuToping)  $default,) {final _that = this;
switch (_that) {
case _MenuState():
return $default(_that.event,_that.respon,_that.errorMessage,_that.menuYogurt,_that.menuToping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Type? event,  Respons respon,  String errorMessage,  MenuYogurtModel menuYogurt,  MenuTopingModel menuToping)?  $default,) {final _that = this;
switch (_that) {
case _MenuState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.menuYogurt,_that.menuToping);case _:
  return null;

}
}

}

/// @nodoc


class _MenuState implements MenuState {
  const _MenuState({this.event, this.respon = Respons.initial, this.errorMessage = '', this.menuYogurt = const MenuYogurtModel(), this.menuToping = const MenuTopingModel()});
  

@override final  Type? event;
@override@JsonKey() final  Respons respon;
@override@JsonKey() final  String errorMessage;
/// Data Models
@override@JsonKey() final  MenuYogurtModel menuYogurt;
@override@JsonKey() final  MenuTopingModel menuToping;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuStateCopyWith<_MenuState> get copyWith => __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.menuYogurt, menuYogurt) || other.menuYogurt == menuYogurt)&&(identical(other.menuToping, menuToping) || other.menuToping == menuToping));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,menuYogurt,menuToping);

@override
String toString() {
  return 'MenuState(event: $event, respon: $respon, errorMessage: $errorMessage, menuYogurt: $menuYogurt, menuToping: $menuToping)';
}


}

/// @nodoc
abstract mixin class _$MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuStateCopyWith(_MenuState value, $Res Function(_MenuState) _then) = __$MenuStateCopyWithImpl;
@override @useResult
$Res call({
 Type? event, Respons respon, String errorMessage, MenuYogurtModel menuYogurt, MenuTopingModel menuToping
});


@override $MenuYogurtModelCopyWith<$Res> get menuYogurt;@override $MenuTopingModelCopyWith<$Res> get menuToping;

}
/// @nodoc
class __$MenuStateCopyWithImpl<$Res>
    implements _$MenuStateCopyWith<$Res> {
  __$MenuStateCopyWithImpl(this._self, this._then);

  final _MenuState _self;
  final $Res Function(_MenuState) _then;

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? menuYogurt = null,Object? menuToping = null,}) {
  return _then(_MenuState(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,menuYogurt: null == menuYogurt ? _self.menuYogurt : menuYogurt // ignore: cast_nullable_to_non_nullable
as MenuYogurtModel,menuToping: null == menuToping ? _self.menuToping : menuToping // ignore: cast_nullable_to_non_nullable
as MenuTopingModel,
  ));
}

/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MenuYogurtModelCopyWith<$Res> get menuYogurt {
  
  return $MenuYogurtModelCopyWith<$Res>(_self.menuYogurt, (value) {
    return _then(_self.copyWith(menuYogurt: value));
  });
}/// Create a copy of MenuState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MenuTopingModelCopyWith<$Res> get menuToping {
  
  return $MenuTopingModelCopyWith<$Res>(_self.menuToping, (value) {
    return _then(_self.copyWith(menuToping: value));
  });
}
}

// dart format on
