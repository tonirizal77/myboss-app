// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'faq_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FaqModel {

 int get id; int get storeId; String get question; String get answer; String get createdTime; String get modifiedTime; int get viewOrder;
/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FaqModelCopyWith<FaqModel> get copyWith => _$FaqModelCopyWithImpl<FaqModel>(this as FaqModel, _$identity);

  /// Serializes this FaqModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FaqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.modifiedTime, modifiedTime) || other.modifiedTime == modifiedTime)&&(identical(other.viewOrder, viewOrder) || other.viewOrder == viewOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,question,answer,createdTime,modifiedTime,viewOrder);

@override
String toString() {
  return 'FaqModel(id: $id, storeId: $storeId, question: $question, answer: $answer, createdTime: $createdTime, modifiedTime: $modifiedTime, viewOrder: $viewOrder)';
}


}

/// @nodoc
abstract mixin class $FaqModelCopyWith<$Res>  {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) _then) = _$FaqModelCopyWithImpl;
@useResult
$Res call({
 int id, int storeId, String question, String answer, String createdTime, String modifiedTime, int viewOrder
});




}
/// @nodoc
class _$FaqModelCopyWithImpl<$Res>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._self, this._then);

  final FaqModel _self;
  final $Res Function(FaqModel) _then;

/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? question = null,Object? answer = null,Object? createdTime = null,Object? modifiedTime = null,Object? viewOrder = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as String,modifiedTime: null == modifiedTime ? _self.modifiedTime : modifiedTime // ignore: cast_nullable_to_non_nullable
as String,viewOrder: null == viewOrder ? _self.viewOrder : viewOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FaqModel].
extension FaqModelPatterns on FaqModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FaqModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FaqModel value)  $default,){
final _that = this;
switch (_that) {
case _FaqModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FaqModel value)?  $default,){
final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int storeId,  String question,  String answer,  String createdTime,  String modifiedTime,  int viewOrder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
return $default(_that.id,_that.storeId,_that.question,_that.answer,_that.createdTime,_that.modifiedTime,_that.viewOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int storeId,  String question,  String answer,  String createdTime,  String modifiedTime,  int viewOrder)  $default,) {final _that = this;
switch (_that) {
case _FaqModel():
return $default(_that.id,_that.storeId,_that.question,_that.answer,_that.createdTime,_that.modifiedTime,_that.viewOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int storeId,  String question,  String answer,  String createdTime,  String modifiedTime,  int viewOrder)?  $default,) {final _that = this;
switch (_that) {
case _FaqModel() when $default != null:
return $default(_that.id,_that.storeId,_that.question,_that.answer,_that.createdTime,_that.modifiedTime,_that.viewOrder);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _FaqModel implements FaqModel {
  const _FaqModel({this.id = 0, this.storeId = 0, this.question = "", this.answer = "", this.createdTime = "", this.modifiedTime = "", this.viewOrder = 0});
  factory _FaqModel.fromJson(Map<String, dynamic> json) => _$FaqModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String question;
@override@JsonKey() final  String answer;
@override@JsonKey() final  String createdTime;
@override@JsonKey() final  String modifiedTime;
@override@JsonKey() final  int viewOrder;

/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FaqModelCopyWith<_FaqModel> get copyWith => __$FaqModelCopyWithImpl<_FaqModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FaqModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FaqModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.question, question) || other.question == question)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.modifiedTime, modifiedTime) || other.modifiedTime == modifiedTime)&&(identical(other.viewOrder, viewOrder) || other.viewOrder == viewOrder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,question,answer,createdTime,modifiedTime,viewOrder);

@override
String toString() {
  return 'FaqModel(id: $id, storeId: $storeId, question: $question, answer: $answer, createdTime: $createdTime, modifiedTime: $modifiedTime, viewOrder: $viewOrder)';
}


}

/// @nodoc
abstract mixin class _$FaqModelCopyWith<$Res> implements $FaqModelCopyWith<$Res> {
  factory _$FaqModelCopyWith(_FaqModel value, $Res Function(_FaqModel) _then) = __$FaqModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int storeId, String question, String answer, String createdTime, String modifiedTime, int viewOrder
});




}
/// @nodoc
class __$FaqModelCopyWithImpl<$Res>
    implements _$FaqModelCopyWith<$Res> {
  __$FaqModelCopyWithImpl(this._self, this._then);

  final _FaqModel _self;
  final $Res Function(_FaqModel) _then;

/// Create a copy of FaqModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? question = null,Object? answer = null,Object? createdTime = null,Object? modifiedTime = null,Object? viewOrder = null,}) {
  return _then(_FaqModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as String,modifiedTime: null == modifiedTime ? _self.modifiedTime : modifiedTime // ignore: cast_nullable_to_non_nullable
as String,viewOrder: null == viewOrder ? _self.viewOrder : viewOrder // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
