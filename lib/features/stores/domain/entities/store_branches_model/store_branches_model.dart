import 'package:freezed_annotation/freezed_annotation.dart';

import '../store_model/store_model.dart';

part 'store_branches_model.freezed.dart';
part 'store_branches_model.g.dart';

/// Response of `GET /store/branches?lat=&lon=`.
@freezed
abstract class StoreBranchesModel with _$StoreBranchesModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StoreBranchesModel({
    @Default([]) List<StoreBranch> data,
    @Default(StoreBranchesMeta()) StoreBranchesMeta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _StoreBranchesModel;

  factory StoreBranchesModel.fromJson(Map<String, Object?> json) =>
      _$StoreBranchesModelFromJson(json);
}

/// One branch (outlet) of the store.
@freezed
abstract class StoreBranch with _$StoreBranch {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory StoreBranch({
    int? id,
    String? urlId,
    String? name,
    String? address,
    String? logo,
    int? isStoreParent,
    AppStatus? appStatus,
    String? locationLat,
    String? locationLon,
    String? cityName,

    /// Distance in km from the `lat`/`lon` sent with the request.
    double? distance,
    @Default(false) bool isOpen,

    /// Opening hours for today, "-" when closed all day.
    String? todayHours,
  }) = _StoreBranch;

  factory StoreBranch.fromJson(Map<String, Object?> json) =>
      _$StoreBranchFromJson(json);
}

@freezed
abstract class StoreBranchesMeta with _$StoreBranchesMeta {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StoreBranchesMeta({
    @Default(0) int total,
    @Default(1) int page,
    @Default(0) int offset,
    @Default(15) int perPage,
    @Default(1) int totalPage,
  }) = _StoreBranchesMeta;

  factory StoreBranchesMeta.fromJson(Map<String, Object?> json) =>
      _$StoreBranchesMetaFromJson(json);
}
