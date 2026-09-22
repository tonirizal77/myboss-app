import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

part 'stamps_option_model.freezed.dart';
part 'stamps_option_model.g.dart';

@freezed
abstract class StampsOptionModel with _$StampsOptionModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsOptionModel({
    List<StampsOption>? data,
    @Default(Meta()) Meta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _StampsOptionModel;

  factory StampsOptionModel.fromJson(Map<String, dynamic> json) =>
      _$StampsOptionModelFromJson(json);
}

@freezed
abstract class StampsOption with _$StampsOption {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsOption({
    @Default(0) int id,
    @Default(0) int redeemedPoints,
    @Default("") String status,
    @Default(0) int storeId,
    @Default("") String type,
  }) = _StampsOption;

  factory StampsOption.fromJson(Map<String, dynamic> json) =>
      _$StampsOptionFromJson(json);
}
