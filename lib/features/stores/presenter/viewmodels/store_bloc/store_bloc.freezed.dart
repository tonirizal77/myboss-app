// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreEvent()';
}


}

/// @nodoc
class $StoreEventCopyWith<$Res>  {
$StoreEventCopyWith(StoreEvent _, $Res Function(StoreEvent) __);
}


/// Adds pattern-matching-related methods to [StoreEvent].
extension StoreEventPatterns on StoreEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _EventGetStore value)?  getStore,TResult Function( _EventAboutUs value)?  getAboutUs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _EventGetStore() when getStore != null:
return getStore(_that);case _EventAboutUs() when getAboutUs != null:
return getAboutUs(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _EventGetStore value)  getStore,required TResult Function( _EventAboutUs value)  getAboutUs,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _EventGetStore():
return getStore(_that);case _EventAboutUs():
return getAboutUs(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _EventGetStore value)?  getStore,TResult? Function( _EventAboutUs value)?  getAboutUs,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _EventGetStore() when getStore != null:
return getStore(_that);case _EventAboutUs() when getAboutUs != null:
return getAboutUs(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  getStore,TResult Function()?  getAboutUs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _EventGetStore() when getStore != null:
return getStore();case _EventAboutUs() when getAboutUs != null:
return getAboutUs();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  getStore,required TResult Function()  getAboutUs,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _EventGetStore():
return getStore();case _EventAboutUs():
return getAboutUs();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  getStore,TResult? Function()?  getAboutUs,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _EventGetStore() when getStore != null:
return getStore();case _EventAboutUs() when getAboutUs != null:
return getAboutUs();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements StoreEvent {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreEvent.initial()';
}


}




/// @nodoc


class _EventGetStore implements StoreEvent {
  const _EventGetStore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGetStore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreEvent.getStore()';
}


}




/// @nodoc


class _EventAboutUs implements StoreEvent {
  const _EventAboutUs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventAboutUs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoreEvent.getAboutUs()';
}


}




/// @nodoc
mixin _$StoreState {

 Type? get event; Respons get respon; String get errorMessage;/// Data Models
/// Sisipkan data model disini
 StoreModel get store;
/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreStateCopyWith<StoreState> get copyWith => _$StoreStateCopyWithImpl<StoreState>(this as StoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,store);

@override
String toString() {
  return 'StoreState(event: $event, respon: $respon, errorMessage: $errorMessage, store: $store)';
}


}

/// @nodoc
abstract mixin class $StoreStateCopyWith<$Res>  {
  factory $StoreStateCopyWith(StoreState value, $Res Function(StoreState) _then) = _$StoreStateCopyWithImpl;
@useResult
$Res call({
 Type? event, Respons respon, String errorMessage, StoreModel store
});


$StoreModelCopyWith<$Res> get store;

}
/// @nodoc
class _$StoreStateCopyWithImpl<$Res>
    implements $StoreStateCopyWith<$Res> {
  _$StoreStateCopyWithImpl(this._self, this._then);

  final StoreState _self;
  final $Res Function(StoreState) _then;

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? store = null,}) {
  return _then(_self.copyWith(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreModel,
  ));
}
/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreModelCopyWith<$Res> get store {
  
  return $StoreModelCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreState].
extension StoreStatePatterns on StoreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreState value)  $default,){
final _that = this;
switch (_that) {
case _StoreState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreState value)?  $default,){
final _that = this;
switch (_that) {
case _StoreState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  StoreModel store)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.store);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  StoreModel store)  $default,) {final _that = this;
switch (_that) {
case _StoreState():
return $default(_that.event,_that.respon,_that.errorMessage,_that.store);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Type? event,  Respons respon,  String errorMessage,  StoreModel store)?  $default,) {final _that = this;
switch (_that) {
case _StoreState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.store);case _:
  return null;

}
}

}

/// @nodoc


class _StoreState implements StoreState {
  const _StoreState({this.event, this.respon = Respons.initial, this.errorMessage = '', this.store = const StoreModel()});
  

@override final  Type? event;
@override@JsonKey() final  Respons respon;
@override@JsonKey() final  String errorMessage;
/// Data Models
/// Sisipkan data model disini
@override@JsonKey() final  StoreModel store;

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreStateCopyWith<_StoreState> get copyWith => __$StoreStateCopyWithImpl<_StoreState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.store, store) || other.store == store));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,store);

@override
String toString() {
  return 'StoreState(event: $event, respon: $respon, errorMessage: $errorMessage, store: $store)';
}


}

/// @nodoc
abstract mixin class _$StoreStateCopyWith<$Res> implements $StoreStateCopyWith<$Res> {
  factory _$StoreStateCopyWith(_StoreState value, $Res Function(_StoreState) _then) = __$StoreStateCopyWithImpl;
@override @useResult
$Res call({
 Type? event, Respons respon, String errorMessage, StoreModel store
});


@override $StoreModelCopyWith<$Res> get store;

}
/// @nodoc
class __$StoreStateCopyWithImpl<$Res>
    implements _$StoreStateCopyWith<$Res> {
  __$StoreStateCopyWithImpl(this._self, this._then);

  final _StoreState _self;
  final $Res Function(_StoreState) _then;

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? store = null,}) {
  return _then(_StoreState(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,store: null == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as StoreModel,
  ));
}

/// Create a copy of StoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreModelCopyWith<$Res> get store {
  
  return $StoreModelCopyWith<$Res>(_self.store, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

// dart format on
