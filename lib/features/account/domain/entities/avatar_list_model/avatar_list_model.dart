import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

part 'avatar_list_model.freezed.dart';
part 'avatar_list_model.g.dart';

@freezed
abstract class AvatarListModel with _$AvatarListModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AvatarListModel({
    List<AvatarsModel>? data,
    Meta? meta,
    int? status,
    int? error,
  }) = _AvatarListModel;

  factory AvatarListModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarListModelFromJson(json);
}

@freezed
abstract class AvatarsModel with _$AvatarsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AvatarsModel({
    String? fimg,
    int? id,
    String? img,
    String? name,
  }) = _AvatarsModel;

  factory AvatarsModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarsModelFromJson(json);
}
