import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';

import '../entities.dart';

part 'menu_yogurt_model.freezed.dart';
part 'menu_yogurt_model.g.dart';

@freezed
abstract class MenuYogurtModel with _$MenuYogurtModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MenuYogurtModel({
    @Default([]) List<ProductsModel> data,
    @Default(Meta()) Meta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _MenuYogurtModel;

  factory MenuYogurtModel.fromJson(Map<String, dynamic> json) =>
      _$MenuYogurtModelFromJson(json);
}
