import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';

import '../entities.dart';

part 'menu_catalog_model.freezed.dart';
part 'menu_catalog_model.g.dart';

@freezed
abstract class MenuCatalogModel with _$MenuCatalogModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MenuCatalogModel({
    @Default([]) List<ProductsModel> data,
    @Default(Meta()) Meta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _MenuCatalogModel;

  factory MenuCatalogModel.fromJson(Map<String, dynamic> json) =>
      _$MenuCatalogModelFromJson(json);
}
