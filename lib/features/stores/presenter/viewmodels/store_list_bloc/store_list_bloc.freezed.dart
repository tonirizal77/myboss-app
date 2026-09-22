// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StoresListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoresListEvent()';
}


}

/// @nodoc
class $StoresListEventCopyWith<$Res>  {
$StoresListEventCopyWith(StoresListEvent _, $Res Function(StoresListEvent) __);
}


/// Adds pattern-matching-related methods to [StoresListEvent].
extension StoresListEventPatterns on StoresListEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchStores value)?  fetchStores,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchStores() when fetchStores != null:
return fetchStores(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchStores value)  fetchStores,}){
final _that = this;
switch (_that) {
case _FetchStores():
return fetchStores(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchStores value)?  fetchStores,}){
final _that = this;
switch (_that) {
case _FetchStores() when fetchStores != null:
return fetchStores(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchStores,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchStores() when fetchStores != null:
return fetchStores();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchStores,}) {final _that = this;
switch (_that) {
case _FetchStores():
return fetchStores();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchStores,}) {final _that = this;
switch (_that) {
case _FetchStores() when fetchStores != null:
return fetchStores();case _:
  return null;

}
}

}

/// @nodoc


class _FetchStores implements StoresListEvent {
  const _FetchStores();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchStores);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StoresListEvent.fetchStores()';
}


}




/// @nodoc
mixin _$StoresListState {

 StoreListModel get stores; bool get isLoading; bool get isLoadMore; String get error;
/// Create a copy of StoresListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoresListStateCopyWith<StoresListState> get copyWith => _$StoresListStateCopyWithImpl<StoresListState>(this as StoresListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoresListState&&(identical(other.stores, stores) || other.stores == stores)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,stores,isLoading,isLoadMore,error);

@override
String toString() {
  return 'StoresListState(stores: $stores, isLoading: $isLoading, isLoadMore: $isLoadMore, error: $error)';
}


}

/// @nodoc
abstract mixin class $StoresListStateCopyWith<$Res>  {
  factory $StoresListStateCopyWith(StoresListState value, $Res Function(StoresListState) _then) = _$StoresListStateCopyWithImpl;
@useResult
$Res call({
 StoreListModel stores, bool isLoading, bool isLoadMore, String error
});


$StoreListModelCopyWith<$Res> get stores;

}
/// @nodoc
class _$StoresListStateCopyWithImpl<$Res>
    implements $StoresListStateCopyWith<$Res> {
  _$StoresListStateCopyWithImpl(this._self, this._then);

  final StoresListState _self;
  final $Res Function(StoresListState) _then;

/// Create a copy of StoresListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stores = null,Object? isLoading = null,Object? isLoadMore = null,Object? error = null,}) {
  return _then(_self.copyWith(
stores: null == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as StoreListModel,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of StoresListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreListModelCopyWith<$Res> get stores {
  
  return $StoreListModelCopyWith<$Res>(_self.stores, (value) {
    return _then(_self.copyWith(stores: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoresListState].
extension StoresListStatePatterns on StoresListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoresListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoresListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoresListState value)  $default,){
final _that = this;
switch (_that) {
case _StoresListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoresListState value)?  $default,){
final _that = this;
switch (_that) {
case _StoresListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StoreListModel stores,  bool isLoading,  bool isLoadMore,  String error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoresListState() when $default != null:
return $default(_that.stores,_that.isLoading,_that.isLoadMore,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StoreListModel stores,  bool isLoading,  bool isLoadMore,  String error)  $default,) {final _that = this;
switch (_that) {
case _StoresListState():
return $default(_that.stores,_that.isLoading,_that.isLoadMore,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StoreListModel stores,  bool isLoading,  bool isLoadMore,  String error)?  $default,) {final _that = this;
switch (_that) {
case _StoresListState() when $default != null:
return $default(_that.stores,_that.isLoading,_that.isLoadMore,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _StoresListState implements StoresListState {
  const _StoresListState({this.stores = const StoreListModel(), this.isLoading = false, this.isLoadMore = false, this.error = ""});
  

@override@JsonKey() final  StoreListModel stores;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadMore;
@override@JsonKey() final  String error;

/// Create a copy of StoresListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoresListStateCopyWith<_StoresListState> get copyWith => __$StoresListStateCopyWithImpl<_StoresListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoresListState&&(identical(other.stores, stores) || other.stores == stores)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadMore, isLoadMore) || other.isLoadMore == isLoadMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,stores,isLoading,isLoadMore,error);

@override
String toString() {
  return 'StoresListState(stores: $stores, isLoading: $isLoading, isLoadMore: $isLoadMore, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StoresListStateCopyWith<$Res> implements $StoresListStateCopyWith<$Res> {
  factory _$StoresListStateCopyWith(_StoresListState value, $Res Function(_StoresListState) _then) = __$StoresListStateCopyWithImpl;
@override @useResult
$Res call({
 StoreListModel stores, bool isLoading, bool isLoadMore, String error
});


@override $StoreListModelCopyWith<$Res> get stores;

}
/// @nodoc
class __$StoresListStateCopyWithImpl<$Res>
    implements _$StoresListStateCopyWith<$Res> {
  __$StoresListStateCopyWithImpl(this._self, this._then);

  final _StoresListState _self;
  final $Res Function(_StoresListState) _then;

/// Create a copy of StoresListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stores = null,Object? isLoading = null,Object? isLoadMore = null,Object? error = null,}) {
  return _then(_StoresListState(
stores: null == stores ? _self.stores : stores // ignore: cast_nullable_to_non_nullable
as StoreListModel,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadMore: null == isLoadMore ? _self.isLoadMore : isLoadMore // ignore: cast_nullable_to_non_nullable
as bool,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of StoresListState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreListModelCopyWith<$Res> get stores {
  
  return $StoreListModelCopyWith<$Res>(_self.stores, (value) {
    return _then(_self.copyWith(stores: value));
  });
}
}

// dart format on
