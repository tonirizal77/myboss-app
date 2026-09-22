import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
abstract class CustomerModel with _$CustomerModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CustomerModel({
    @Default(0) int? acceptNewsletter,
    String? address,
    dynamic cart,
    String? code,
    String? company,
    String? creditLimit,
    CustomerType? customerType,
    @Default(0) int? customerTypeId,
    String? dob,
    String? email,
    String? expiryDate,
    int? id,
    @Default(0) int? isEmailVerified,
    @Default(0) int? isFrozen,
    @Default(0) int? isVerified,
    LocationCustomer? location,
    String? name,
    String? notes,
    String? phone,
    String? status,
    int? storeId,
    @Default(0) int? subDistricId,
  }) = _Customer;

  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

@freezed
abstract class CustomerType with _$CustomerType {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CustomerType({
    @Default(0) int? id,
    @Default('guest') String? name,
  }) = _CustomerType;

  factory CustomerType.fromJson(Map<String, dynamic> json) =>
      _$CustomerTypeFromJson(json);
}

@freezed
abstract class LocationCustomer with _$LocationCustomer {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LocationCustomer({
    String? city,
    String? cityDistrict,
    int? cityId,
    String? country,
    String? state,
    int? stateId,
  }) = _LocationCustomer;

  factory LocationCustomer.fromJson(Map<String, dynamic> json) =>
      _$LocationCustomerFromJson(json);
}
