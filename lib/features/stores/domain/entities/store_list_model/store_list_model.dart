import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_list_model.freezed.dart';
part 'store_list_model.g.dart';

@freezed
abstract class StoreListModel with _$StoreListModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StoreListModel({
    @Default([]) List<StoreList> data,
    @Default(0) int status,
    @Default(0) int error,
  }) = _StoreListModel;

  factory StoreListModel.fromJson(Map<String, Object?> json) =>
      _$StoreListModelFromJson(json);
}

@freezed
abstract class StoreList with _$StoreList {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StoreList({
    String? address,
    String? city,
    String? fStatus,
    String? googleMapLink,
    int? id,
    String? image,
    String? locationLat,
    String? locationLon,
    String? name,
    String? phone,
    String? status,
  }) = _StoreList;

  factory StoreList.fromJson(Map<String, Object?> json) =>
      _$StoreListFromJson(json);
}
