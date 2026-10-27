// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_branches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoreBranchesEvent {

 DataMap get location;
/// Create a copy of StoreBranchesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBranchesEventCopyWith<StoreBranchesEvent> get copyWith => _$StoreBranchesEventCopyWithImpl<StoreBranchesEvent>(this as StoreBranchesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBranchesEvent&&const DeepCollectionEquality().equals(other.location, location));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(location));

@override
String toString() {
  return 'StoreBranchesEvent(location: $location)';
}


}

/// @nodoc
abstract mixin class $StoreBranchesEventCopyWith<$Res>  {
  factory $StoreBranchesEventCopyWith(StoreBranchesEvent value, $Res Function(StoreBranchesEvent) _then) = _$StoreBranchesEventCopyWithImpl;
@useResult
$Res call({
 DataMap location
});




}
/// @nodoc
class _$StoreBranchesEventCopyWithImpl<$Res>
    implements $StoreBranchesEventCopyWith<$Res> {
  _$StoreBranchesEventCopyWithImpl(this._self, this._then);

  final StoreBranchesEvent _self;
  final $Res Function(StoreBranchesEvent) _then;

/// Create a copy of StoreBranchesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = null,}) {
  return _then(_self.copyWith(
location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreBranchesEvent].
extension StoreBranchesEventPatterns on StoreBranchesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchBranches value)?  fetchBranches,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchBranches() when fetchBranches != null:
return fetchBranches(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchBranches value)  fetchBranches,}){
final _that = this;
switch (_that) {
case _FetchBranches():
return fetchBranches(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchBranches value)?  fetchBranches,}){
final _that = this;
switch (_that) {
case _FetchBranches() when fetchBranches != null:
return fetchBranches(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DataMap location)?  fetchBranches,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchBranches() when fetchBranches != null:
return fetchBranches(_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DataMap location)  fetchBranches,}) {final _that = this;
switch (_that) {
case _FetchBranches():
return fetchBranches(_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DataMap location)?  fetchBranches,}) {final _that = this;
switch (_that) {
case _FetchBranches() when fetchBranches != null:
return fetchBranches(_that.location);case _:
  return null;

}
}

}

/// @nodoc


class _FetchBranches implements StoreBranchesEvent {
  const _FetchBranches(final  DataMap location): _location = location;
  

 final  DataMap _location;
@override DataMap get location {
  if (_location is EqualUnmodifiableMapView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_location);
}


/// Create a copy of StoreBranchesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchBranchesCopyWith<_FetchBranches> get copyWith => __$FetchBranchesCopyWithImpl<_FetchBranches>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchBranches&&const DeepCollectionEquality().equals(other._location, _location));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_location));

@override
String toString() {
  return 'StoreBranchesEvent.fetchBranches(location: $location)';
}


}

/// @nodoc
abstract mixin class _$FetchBranchesCopyWith<$Res> implements $StoreBranchesEventCopyWith<$Res> {
  factory _$FetchBranchesCopyWith(_FetchBranches value, $Res Function(_FetchBranches) _then) = __$FetchBranchesCopyWithImpl;
@override @useResult
$Res call({
 DataMap location
});




}
/// @nodoc
class __$FetchBranchesCopyWithImpl<$Res>
    implements _$FetchBranchesCopyWith<$Res> {
  __$FetchBranchesCopyWithImpl(this._self, this._then);

  final _FetchBranches _self;
  final $Res Function(_FetchBranches) _then;

/// Create a copy of StoreBranchesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(_FetchBranches(
null == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc
mixin _$StoreBranchesState {

 StoreBranchesModel get branches; bool get isLoading; bool get isLoadMore; String get error;
/// Create a copy of StoreBranchesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBranchesStateCopyWith<StoreBranchesState> get copyWith => _$StoreBranchesStateCopyWithImpl<StoreBranchesState>(this as StoreBranchesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBranchesState&&(identical(other.branches, branches) || other.branches == branches)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,branches,isLoading,isLoadMore,error);

@override
String toString() {
  return 'StoreBranchesState(branches: $branches, isLoading: $isLoading, isLoadMore: $isLoadMore, error: $error)';
}


}

/// @nodoc
abstract mixin class $StoreBranchesStateCopyWith<$Res>  {
  factory $StoreBranchesStateCopyWith(StoreBranchesState value, $Res Function(StoreBranchesState) _then) = _$StoreBranchesStateCopyWithImpl;
@useResult
$Res call({
 StoreBranchesModel branches, bool isLoading, bool isLoadMore, String error
});


$StoreBranchesModelCopyWith<$Res> get branches;

}
/// @nodoc
class _$StoreBranchesStateCopyWithImpl<$Res>
    implements $StoreBranchesStateCopyWith<$Res> {
  _$StoreBranchesStateCopyWithImpl(this._self, this._then);

  final StoreBranchesState _self;
  final $Res Function(StoreBranchesState) _then;

/// Create a copy of StoreBranchesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? branches = null,Object? isLoading = null,Object? isLoadMore = null,Object? error = null,}) {
  return _then(_self.copyWith(
branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as StoreBranchesModel,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of StoreBranchesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBranchesModelCopyWith<$Res> get branches {
  
  return $StoreBranchesModelCopyWith<$Res>(_self.branches, (value) {
    return _then(_self.copyWith(branches: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreBranchesState].
extension StoreBranchesStatePatterns on StoreBranchesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreBranchesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreBranchesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreBranchesState value)  $default,){
final _that = this;
switch (_that) {
case _StoreBranchesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreBranchesState value)?  $default,){
final _that = this;
switch (_that) {
case _StoreBranchesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoreBranchesModel branches,  bool isLoading,  bool isLoadMore,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreBranchesState() when $default != null:
return $default(_that.branches,_that.isLoading,_that.isLoadMore,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoreBranchesModel branches,  bool isLoading,  bool isLoadMore,  String error)  $default,) {final _that = this;
switch (_that) {
case _StoreBranchesState():
return $default(_that.branches,_that.isLoading,_that.isLoadMore,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoreBranchesModel branches,  bool isLoading,  bool isLoadMore,  String error)?  $default,) {final _that = this;
switch (_that) {
case _StoreBranchesState() when $default != null:
return $default(_that.branches,_that.isLoading,_that.isLoadMore,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StoreBranchesState implements StoreBranchesState {
  const _StoreBranchesState({this.branches = const StoreBranchesModel(), this.isLoading = false, this.isLoadMore = false, this.error = ""});
  

@override@JsonKey() final  StoreBranchesModel branches;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadMore;
@override@JsonKey() final  String error;

/// Create a copy of StoreBranchesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreBranchesStateCopyWith<_StoreBranchesState> get copyWith => __$StoreBranchesStateCopyWithImpl<_StoreBranchesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreBranchesState&&(identical(other.branches, branches) || other.branches == branches)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,branches,isLoading,isLoadMore,error);

@override
String toString() {
  return 'StoreBranchesState(branches: $branches, isLoading: $isLoading, isLoadMore: $isLoadMore, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StoreBranchesStateCopyWith<$Res> implements $StoreBranchesStateCopyWith<$Res> {
  factory _$StoreBranchesStateCopyWith(_StoreBranchesState value, $Res Function(_StoreBranchesState) _then) = __$StoreBranchesStateCopyWithImpl;
@override @useResult
$Res call({
 StoreBranchesModel branches, bool isLoading, bool isLoadMore, String error
});


@override $StoreBranchesModelCopyWith<$Res> get branches;

}
/// @nodoc
class __$StoreBranchesStateCopyWithImpl<$Res>
    implements _$StoreBranchesStateCopyWith<$Res> {
  __$StoreBranchesStateCopyWithImpl(this._self, this._then);

  final _StoreBranchesState _self;
  final $Res Function(_StoreBranchesState) _then;

/// Create a copy of StoreBranchesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? branches = null,Object? isLoading = null,Object? isLoadMore = null,Object? error = null,}) {
  return _then(_StoreBranchesState(
branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as StoreBranchesModel,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of StoreBranchesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBranchesModelCopyWith<$Res> get branches {
  
  return $StoreBranchesModelCopyWith<$Res>(_self.branches, (value) {
    return _then(_self.copyWith(branches: value));
  });
}
}

// dart format on
