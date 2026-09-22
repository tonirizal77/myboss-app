import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProfileModel({
    @Default(0) int acceptNewsletter,
    @Default("") String address,
    @Default("") String avatar,
    @Default(0) int avatarId,
    @Default(0) int cityId,
    @Default("") String code,
    @Default("") String company,
    @Default("") String countryId,
    @Default("") String createdTime,
    @Default("") String creditLimit,
    CustomerTypeId? customerTypeId,
    @Default("") String email,
    @Default("") String favatar,
    @Default(0) int id,
    @Default(0) int isEmailVerified,
    @Default(0) int isFrozen,
    @Default(0) int isVerified,
    @Default("") String name,
    @Default("") String notes,
    @Default("") String phone,
    @Default("") String photo,
    @Default("") String photomd,
    @Default("") String photosm,
    @Default("") String postalCode,
    @Default("") String status,
    @Default(0) int storeId,
    @Default(0) int subdistrictId,
    @Default(1) int level,
    @Default("Cool") String levelName,
    @Default(0) int maxStamp,
    @Default(0) int filledStamp,
    @Default(0) int maxTotalStamp,
    @Default(0) int stampFreeCount,
    @Default(0) int availableVoucherCount,
    @Default(0) int cumulativePrev,
    @Default(0) int currentCycle,
    @Default(0) int totalPoint,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
abstract class CustomerTypeId with _$CustomerTypeId {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CustomerTypeId({
    @Default(0) int? id,
    @Default('guest') String? name,
  }) = _CustomerTypeId;

  factory CustomerTypeId.fromJson(Map<String, dynamic> json) =>
      _$CustomerTypeIdFromJson(json);
}
