import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';

import '../entities.dart';

part 'menu_toping_model.freezed.dart';
part 'menu_toping_model.g.dart';

@freezed
abstract class MenuTopingModel with _$MenuTopingModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MenuTopingModel({
    @Default([]) List<DataToping> data,
    @Default(Meta()) Meta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _MenuTopingModel;

  factory MenuTopingModel.fromJson(Map<String, dynamic> json) =>
      _$MenuTopingModelFromJson(json);
}

@freezed
abstract class DataToping with _$DataToping {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DataToping({
    @Default(0) int id,
    @Default("") String name,
    @Default(0) int storeid,
    @Default("") String status,
    @Default([]) List<ProductsModel> products,
  }) = _DataToping;

  factory DataToping.fromJson(Map<String, dynamic> json) =>
      _$DataTopingFromJson(json);
}
