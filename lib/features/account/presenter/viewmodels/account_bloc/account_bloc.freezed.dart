// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent()';
}


}

/// @nodoc
class $AccountEventCopyWith<$Res>  {
$AccountEventCopyWith(AccountEvent _, $Res Function(AccountEvent) __);
}


/// Adds pattern-matching-related methods to [AccountEvent].
extension AccountEventPatterns on AccountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _EventAboutUs value)?  aboutUs,TResult Function( _EventFaq value)?  faq,TResult Function( _EventContactUs value)?  contactUs,TResult Function( _EventTnc value)?  tnc,TResult Function( _EventStampsHistory value)?  stampsHistory,TResult Function( _EventVouchers value)?  vouchers,TResult Function( _EventResetAccount value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _EventAboutUs() when aboutUs != null:
return aboutUs(_that);case _EventFaq() when faq != null:
return faq(_that);case _EventContactUs() when contactUs != null:
return contactUs(_that);case _EventTnc() when tnc != null:
return tnc(_that);case _EventStampsHistory() when stampsHistory != null:
return stampsHistory(_that);case _EventVouchers() when vouchers != null:
return vouchers(_that);case _EventResetAccount() when reset != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _EventAboutUs value)  aboutUs,required TResult Function( _EventFaq value)  faq,required TResult Function( _EventContactUs value)  contactUs,required TResult Function( _EventTnc value)  tnc,required TResult Function( _EventStampsHistory value)  stampsHistory,required TResult Function( _EventVouchers value)  vouchers,required TResult Function( _EventResetAccount value)  reset,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _EventAboutUs():
return aboutUs(_that);case _EventFaq():
return faq(_that);case _EventContactUs():
return contactUs(_that);case _EventTnc():
return tnc(_that);case _EventStampsHistory():
return stampsHistory(_that);case _EventVouchers():
return vouchers(_that);case _EventResetAccount():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _EventAboutUs value)?  aboutUs,TResult? Function( _EventFaq value)?  faq,TResult? Function( _EventContactUs value)?  contactUs,TResult? Function( _EventTnc value)?  tnc,TResult? Function( _EventStampsHistory value)?  stampsHistory,TResult? Function( _EventVouchers value)?  vouchers,TResult? Function( _EventResetAccount value)?  reset,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _EventAboutUs() when aboutUs != null:
return aboutUs(_that);case _EventFaq() when faq != null:
return faq(_that);case _EventContactUs() when contactUs != null:
return contactUs(_that);case _EventTnc() when tnc != null:
return tnc(_that);case _EventStampsHistory() when stampsHistory != null:
return stampsHistory(_that);case _EventVouchers() when vouchers != null:
return vouchers(_that);case _EventResetAccount() when reset != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  aboutUs,TResult Function()?  faq,TResult Function()?  contactUs,TResult Function()?  tnc,TResult Function( LoadListData param)?  stampsHistory,TResult Function( DataMap param)?  vouchers,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _EventAboutUs() when aboutUs != null:
return aboutUs();case _EventFaq() when faq != null:
return faq();case _EventContactUs() when contactUs != null:
return contactUs();case _EventTnc() when tnc != null:
return tnc();case _EventStampsHistory() when stampsHistory != null:
return stampsHistory(_that.param);case _EventVouchers() when vouchers != null:
return vouchers(_that.param);case _EventResetAccount() when reset != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  aboutUs,required TResult Function()  faq,required TResult Function()  contactUs,required TResult Function()  tnc,required TResult Function( LoadListData param)  stampsHistory,required TResult Function( DataMap param)  vouchers,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _EventAboutUs():
return aboutUs();case _EventFaq():
return faq();case _EventContactUs():
return contactUs();case _EventTnc():
return tnc();case _EventStampsHistory():
return stampsHistory(_that.param);case _EventVouchers():
return vouchers(_that.param);case _EventResetAccount():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  aboutUs,TResult? Function()?  faq,TResult? Function()?  contactUs,TResult? Function()?  tnc,TResult? Function( LoadListData param)?  stampsHistory,TResult? Function( DataMap param)?  vouchers,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _EventAboutUs() when aboutUs != null:
return aboutUs();case _EventFaq() when faq != null:
return faq();case _EventContactUs() when contactUs != null:
return contactUs();case _EventTnc() when tnc != null:
return tnc();case _EventStampsHistory() when stampsHistory != null:
return stampsHistory(_that.param);case _EventVouchers() when vouchers != null:
return vouchers(_that.param);case _EventResetAccount() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AccountEvent {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.initial()';
}


}




/// @nodoc


class _EventAboutUs implements AccountEvent {
  const _EventAboutUs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventAboutUs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.aboutUs()';
}


}




/// @nodoc


class _EventFaq implements AccountEvent {
  const _EventFaq();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventFaq);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.faq()';
}


}




/// @nodoc


class _EventContactUs implements AccountEvent {
  const _EventContactUs();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventContactUs);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.contactUs()';
}


}




/// @nodoc


class _EventTnc implements AccountEvent {
  const _EventTnc();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventTnc);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.tnc()';
}


}




/// @nodoc


class _EventStampsHistory implements AccountEvent {
  const _EventStampsHistory({this.param = const LoadListData()});
  

@JsonKey() final  LoadListData param;

/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventStampsHistoryCopyWith<_EventStampsHistory> get copyWith => __$EventStampsHistoryCopyWithImpl<_EventStampsHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventStampsHistory&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'AccountEvent.stampsHistory(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventStampsHistoryCopyWith<$Res> implements $AccountEventCopyWith<$Res> {
  factory _$EventStampsHistoryCopyWith(_EventStampsHistory value, $Res Function(_EventStampsHistory) _then) = __$EventStampsHistoryCopyWithImpl;
@useResult
$Res call({
 LoadListData param
});


$LoadListDataCopyWith<$Res> get param;

}
/// @nodoc
class __$EventStampsHistoryCopyWithImpl<$Res>
    implements _$EventStampsHistoryCopyWith<$Res> {
  __$EventStampsHistoryCopyWithImpl(this._self, this._then);

  final _EventStampsHistory _self;
  final $Res Function(_EventStampsHistory) _then;

/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventStampsHistory(
param: null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as LoadListData,
  ));
}

/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadListDataCopyWith<$Res> get param {
  
  return $LoadListDataCopyWith<$Res>(_self.param, (value) {
    return _then(_self.copyWith(param: value));
  });
}
}

/// @nodoc


class _EventVouchers implements AccountEvent {
  const _EventVouchers({final  DataMap param = const {}}): _param = param;
  

 final  DataMap _param;
@JsonKey() DataMap get param {
  if (_param is EqualUnmodifiableMapView) return _param;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_param);
}


/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventVouchersCopyWith<_EventVouchers> get copyWith => __$EventVouchersCopyWithImpl<_EventVouchers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventVouchers&&const DeepCollectionEquality().equals(other._param, _param));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_param));

@override
String toString() {
  return 'AccountEvent.vouchers(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventVouchersCopyWith<$Res> implements $AccountEventCopyWith<$Res> {
  factory _$EventVouchersCopyWith(_EventVouchers value, $Res Function(_EventVouchers) _then) = __$EventVouchersCopyWithImpl;
@useResult
$Res call({
 DataMap param
});




}
/// @nodoc
class __$EventVouchersCopyWithImpl<$Res>
    implements _$EventVouchersCopyWith<$Res> {
  __$EventVouchersCopyWithImpl(this._self, this._then);

  final _EventVouchers _self;
  final $Res Function(_EventVouchers) _then;

/// Create a copy of AccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventVouchers(
param: null == param ? _self._param : param // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc


class _EventResetAccount implements AccountEvent {
  const _EventResetAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventResetAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AccountEvent.reset()';
}


}




/// @nodoc
mixin _$AccountState {

 Type? get event; Respons get respon; String get errorMessage;/// Models Data
 AboutUsModel get aboutUs; FaqModel get faq; TncModel get tnc; ContactUsModel get contactUs; StampsHistoryModel get stampsHistory; VoucherListModel get vouchers; LoadListData get filter;
/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountStateCopyWith<AccountState> get copyWith => _$AccountStateCopyWithImpl<AccountState>(this as AccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs)&&(identical(other.faq, faq) || other.faq == faq)&&(identical(other.tnc, tnc) || other.tnc == tnc)&&(identical(other.contactUs, contactUs) || other.contactUs == contactUs)&&(identical(other.stampsHistory, stampsHistory) || other.stampsHistory == stampsHistory)&&(identical(other.vouchers, vouchers) || other.vouchers == vouchers)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,aboutUs,faq,tnc,contactUs,stampsHistory,vouchers,filter);

@override
String toString() {
  return 'AccountState(event: $event, respon: $respon, errorMessage: $errorMessage, aboutUs: $aboutUs, faq: $faq, tnc: $tnc, contactUs: $contactUs, stampsHistory: $stampsHistory, vouchers: $vouchers, filter: $filter)';
}


}

/// @nodoc
abstract mixin class $AccountStateCopyWith<$Res>  {
  factory $AccountStateCopyWith(AccountState value, $Res Function(AccountState) _then) = _$AccountStateCopyWithImpl;
@useResult
$Res call({
 Type? event, Respons respon, String errorMessage, AboutUsModel aboutUs, FaqModel faq, TncModel tnc, ContactUsModel contactUs, StampsHistoryModel stampsHistory, VoucherListModel vouchers, LoadListData filter
});


$AboutUsModelCopyWith<$Res> get aboutUs;$FaqModelCopyWith<$Res> get faq;$TncModelCopyWith<$Res> get tnc;$ContactUsModelCopyWith<$Res> get contactUs;$StampsHistoryModelCopyWith<$Res> get stampsHistory;$VoucherListModelCopyWith<$Res> get vouchers;$LoadListDataCopyWith<$Res> get filter;

}
/// @nodoc
class _$AccountStateCopyWithImpl<$Res>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._self, this._then);

  final AccountState _self;
  final $Res Function(AccountState) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? aboutUs = null,Object? faq = null,Object? tnc = null,Object? contactUs = null,Object? stampsHistory = null,Object? vouchers = null,Object? filter = null,}) {
  return _then(_self.copyWith(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,aboutUs: null == aboutUs ? _self.aboutUs : aboutUs // ignore: cast_nullable_to_non_nullable
as AboutUsModel,faq: null == faq ? _self.faq : faq // ignore: cast_nullable_to_non_nullable
as FaqModel,tnc: null == tnc ? _self.tnc : tnc // ignore: cast_nullable_to_non_nullable
as TncModel,contactUs: null == contactUs ? _self.contactUs : contactUs // ignore: cast_nullable_to_non_nullable
as ContactUsModel,stampsHistory: null == stampsHistory ? _self.stampsHistory : stampsHistory // ignore: cast_nullable_to_non_nullable
as StampsHistoryModel,vouchers: null == vouchers ? _self.vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as VoucherListModel,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as LoadListData,
  ));
}
/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AboutUsModelCopyWith<$Res> get aboutUs {
  
  return $AboutUsModelCopyWith<$Res>(_self.aboutUs, (value) {
    return _then(_self.copyWith(aboutUs: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaqModelCopyWith<$Res> get faq {
  
  return $FaqModelCopyWith<$Res>(_self.faq, (value) {
    return _then(_self.copyWith(faq: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TncModelCopyWith<$Res> get tnc {
  
  return $TncModelCopyWith<$Res>(_self.tnc, (value) {
    return _then(_self.copyWith(tnc: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactUsModelCopyWith<$Res> get contactUs {
  
  return $ContactUsModelCopyWith<$Res>(_self.contactUs, (value) {
    return _then(_self.copyWith(contactUs: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsHistoryModelCopyWith<$Res> get stampsHistory {
  
  return $StampsHistoryModelCopyWith<$Res>(_self.stampsHistory, (value) {
    return _then(_self.copyWith(stampsHistory: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VoucherListModelCopyWith<$Res> get vouchers {
  
  return $VoucherListModelCopyWith<$Res>(_self.vouchers, (value) {
    return _then(_self.copyWith(vouchers: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadListDataCopyWith<$Res> get filter {
  
  return $LoadListDataCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}


/// Adds pattern-matching-related methods to [AccountState].
extension AccountStatePatterns on AccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AccountState value)  $default,){
final _that = this;
switch (_that) {
case _AccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AccountState value)?  $default,){
final _that = this;
switch (_that) {
case _AccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  AboutUsModel aboutUs,  FaqModel faq,  TncModel tnc,  ContactUsModel contactUs,  StampsHistoryModel stampsHistory,  VoucherListModel vouchers,  LoadListData filter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AccountState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.aboutUs,_that.faq,_that.tnc,_that.contactUs,_that.stampsHistory,_that.vouchers,_that.filter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Type? event,  Respons respon,  String errorMessage,  AboutUsModel aboutUs,  FaqModel faq,  TncModel tnc,  ContactUsModel contactUs,  StampsHistoryModel stampsHistory,  VoucherListModel vouchers,  LoadListData filter)  $default,) {final _that = this;
switch (_that) {
case _AccountState():
return $default(_that.event,_that.respon,_that.errorMessage,_that.aboutUs,_that.faq,_that.tnc,_that.contactUs,_that.stampsHistory,_that.vouchers,_that.filter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Type? event,  Respons respon,  String errorMessage,  AboutUsModel aboutUs,  FaqModel faq,  TncModel tnc,  ContactUsModel contactUs,  StampsHistoryModel stampsHistory,  VoucherListModel vouchers,  LoadListData filter)?  $default,) {final _that = this;
switch (_that) {
case _AccountState() when $default != null:
return $default(_that.event,_that.respon,_that.errorMessage,_that.aboutUs,_that.faq,_that.tnc,_that.contactUs,_that.stampsHistory,_that.vouchers,_that.filter);case _:
  return null;

}
}

}

/// @nodoc


class _AccountState implements AccountState {
  const _AccountState({this.event, this.respon = Respons.initial, this.errorMessage = '', this.aboutUs = const AboutUsModel(), this.faq = const FaqModel(), this.tnc = const TncModel(), this.contactUs = const ContactUsModel(), this.stampsHistory = const StampsHistoryModel(), this.vouchers = const VoucherListModel(), this.filter = const LoadListData()});
  

@override final  Type? event;
@override@JsonKey() final  Respons respon;
@override@JsonKey() final  String errorMessage;
/// Models Data
@override@JsonKey() final  AboutUsModel aboutUs;
@override@JsonKey() final  FaqModel faq;
@override@JsonKey() final  TncModel tnc;
@override@JsonKey() final  ContactUsModel contactUs;
@override@JsonKey() final  StampsHistoryModel stampsHistory;
@override@JsonKey() final  VoucherListModel vouchers;
@override@JsonKey() final  LoadListData filter;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountStateCopyWith<_AccountState> get copyWith => __$AccountStateCopyWithImpl<_AccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountState&&(identical(other.event, event) || other.event == event)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs)&&(identical(other.faq, faq) || other.faq == faq)&&(identical(other.tnc, tnc) || other.tnc == tnc)&&(identical(other.contactUs, contactUs) || other.contactUs == contactUs)&&(identical(other.stampsHistory, stampsHistory) || other.stampsHistory == stampsHistory)&&(identical(other.vouchers, vouchers) || other.vouchers == vouchers)&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,event,respon,errorMessage,aboutUs,faq,tnc,contactUs,stampsHistory,vouchers,filter);

@override
String toString() {
  return 'AccountState(event: $event, respon: $respon, errorMessage: $errorMessage, aboutUs: $aboutUs, faq: $faq, tnc: $tnc, contactUs: $contactUs, stampsHistory: $stampsHistory, vouchers: $vouchers, filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$AccountStateCopyWith<$Res> implements $AccountStateCopyWith<$Res> {
  factory _$AccountStateCopyWith(_AccountState value, $Res Function(_AccountState) _then) = __$AccountStateCopyWithImpl;
@override @useResult
$Res call({
 Type? event, Respons respon, String errorMessage, AboutUsModel aboutUs, FaqModel faq, TncModel tnc, ContactUsModel contactUs, StampsHistoryModel stampsHistory, VoucherListModel vouchers, LoadListData filter
});


@override $AboutUsModelCopyWith<$Res> get aboutUs;@override $FaqModelCopyWith<$Res> get faq;@override $TncModelCopyWith<$Res> get tnc;@override $ContactUsModelCopyWith<$Res> get contactUs;@override $StampsHistoryModelCopyWith<$Res> get stampsHistory;@override $VoucherListModelCopyWith<$Res> get vouchers;@override $LoadListDataCopyWith<$Res> get filter;

}
/// @nodoc
class __$AccountStateCopyWithImpl<$Res>
    implements _$AccountStateCopyWith<$Res> {
  __$AccountStateCopyWithImpl(this._self, this._then);

  final _AccountState _self;
  final $Res Function(_AccountState) _then;

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = freezed,Object? respon = null,Object? errorMessage = null,Object? aboutUs = null,Object? faq = null,Object? tnc = null,Object? contactUs = null,Object? stampsHistory = null,Object? vouchers = null,Object? filter = null,}) {
  return _then(_AccountState(
event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,aboutUs: null == aboutUs ? _self.aboutUs : aboutUs // ignore: cast_nullable_to_non_nullable
as AboutUsModel,faq: null == faq ? _self.faq : faq // ignore: cast_nullable_to_non_nullable
as FaqModel,tnc: null == tnc ? _self.tnc : tnc // ignore: cast_nullable_to_non_nullable
as TncModel,contactUs: null == contactUs ? _self.contactUs : contactUs // ignore: cast_nullable_to_non_nullable
as ContactUsModel,stampsHistory: null == stampsHistory ? _self.stampsHistory : stampsHistory // ignore: cast_nullable_to_non_nullable
as StampsHistoryModel,vouchers: null == vouchers ? _self.vouchers : vouchers // ignore: cast_nullable_to_non_nullable
as VoucherListModel,filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as LoadListData,
  ));
}

/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AboutUsModelCopyWith<$Res> get aboutUs {
  
  return $AboutUsModelCopyWith<$Res>(_self.aboutUs, (value) {
    return _then(_self.copyWith(aboutUs: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FaqModelCopyWith<$Res> get faq {
  
  return $FaqModelCopyWith<$Res>(_self.faq, (value) {
    return _then(_self.copyWith(faq: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TncModelCopyWith<$Res> get tnc {
  
  return $TncModelCopyWith<$Res>(_self.tnc, (value) {
    return _then(_self.copyWith(tnc: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactUsModelCopyWith<$Res> get contactUs {
  
  return $ContactUsModelCopyWith<$Res>(_self.contactUs, (value) {
    return _then(_self.copyWith(contactUs: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsHistoryModelCopyWith<$Res> get stampsHistory {
  
  return $StampsHistoryModelCopyWith<$Res>(_self.stampsHistory, (value) {
    return _then(_self.copyWith(stampsHistory: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VoucherListModelCopyWith<$Res> get vouchers {
  
  return $VoucherListModelCopyWith<$Res>(_self.vouchers, (value) {
    return _then(_self.copyWith(vouchers: value));
  });
}/// Create a copy of AccountState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoadListDataCopyWith<$Res> get filter {
  
  return $LoadListDataCopyWith<$Res>(_self.filter, (value) {
    return _then(_self.copyWith(filter: value));
  });
}
}

// dart format on
