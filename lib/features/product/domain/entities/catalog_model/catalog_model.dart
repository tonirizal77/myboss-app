import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_model.freezed.dart';
part 'catalog_model.g.dart';

/// Response of `GET /catalog/group/lists` and `GET /catalog/lists/group`
/// (the latter also fills [CatalogGroup.totalProduct] and
/// [CatalogGroup.products]).
@freezed
abstract class CatalogGroupsModel with _$CatalogGroupsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CatalogGroupsModel({
    @Default([]) List<CatalogGroup> data,
    @Default(CatalogMeta()) CatalogMeta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _CatalogGroupsModel;

  factory CatalogGroupsModel.fromJson(Map<String, Object?> json) =>
      _$CatalogGroupsModelFromJson(json);
}

/// Product group (category): Wearable, Audio, ...
@freezed
abstract class CatalogGroup with _$CatalogGroup {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CatalogGroup({
    @Default(0) int id,
    String? nameEn,
    String? nameId,

    /// Category icon; the server placeholder (`no_photo`) when not set.
    String? photoMd,

    /// `/catalog/lists/group` only.
    @Default(0) int totalProduct,
    @Default([]) List<CatalogItem> products,
  }) = _CatalogGroup;

  factory CatalogGroup.fromJson(Map<String, Object?> json) =>
      _$CatalogGroupFromJson(json);
}

/// Response of `GET /catalog/lists`.
@freezed
abstract class CatalogListModel with _$CatalogListModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CatalogListModel({
    @Default([]) List<CatalogItem> data,
    @Default(CatalogMeta()) CatalogMeta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _CatalogListModel;

  factory CatalogListModel.fromJson(Map<String, Object?> json) =>
      _$CatalogListModelFromJson(json);
}

/// Product card: list items, group products and related products.
@freezed
abstract class CatalogItem with _$CatalogItem {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CatalogItem({
    @Default(0) int id,
    @Default('') String name,
    String? photoMd,

    /// `/catalog/lists` only.
    int? productGroupId,
    String? productGroupName,
  }) = _CatalogItem;

  factory CatalogItem.fromJson(Map<String, Object?> json) =>
      _$CatalogItemFromJson(json);
}

/// Response of `GET /catalog/brand/lists`.
@freezed
abstract class CatalogBrandsModel with _$CatalogBrandsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CatalogBrandsModel({
    @Default([]) List<CatalogBrand> data,
    @Default(CatalogMeta()) CatalogMeta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _CatalogBrandsModel;

  factory CatalogBrandsModel.fromJson(Map<String, Object?> json) =>
      _$CatalogBrandsModelFromJson(json);
}

@freezed
abstract class CatalogBrand with _$CatalogBrand {
  const factory CatalogBrand({@Default(0) int id, @Default('') String name}) =
      _CatalogBrand;

  factory CatalogBrand.fromJson(Map<String, Object?> json) =>
      _$CatalogBrandFromJson(json);
}

/// `data` of `GET /catalog/show/{id}`.
@freezed
abstract class CatalogDetail with _$CatalogDetail {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CatalogDetail({
    @Default(0) int id,
    @Default('') String name,
    int? labelId,

    /// Free label shown as a badge: "New Release", "Sale", ...
    String? labelTag,
    @Default('') String description,

    /// Element shape not confirmed by backend yet (always empty so far):
    /// kept raw, resolved by `CatalogDetailX.photos`.
    @Default([]) List<Object?> productPhotos,
    @Default([]) List<CatalogSpec> specifications,
    @Default([]) List<CatalogItem> relatedProducts,
  }) = _CatalogDetail;

  factory CatalogDetail.fromJson(Map<String, Object?> json) =>
      _$CatalogDetailFromJson(json);
}

/// One specification row. [id] is the attribute id, shared by products.
@freezed
abstract class CatalogSpec with _$CatalogSpec {
  const factory CatalogSpec({
    int? id,
    @Default('') String name,
    @Default('') String value,
  }) = _CatalogSpec;

  factory CatalogSpec.fromJson(Map<String, Object?> json) =>
      _$CatalogSpecFromJson(json);
}

@freezed
abstract class CatalogMeta with _$CatalogMeta {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CatalogMeta({
    @Default(0) int total,
    @Default(1) int page,
    @Default(0) int offset,
    @Default(15) int perPage,
    @Default(1) int totalPage,
  }) = _CatalogMeta;

  factory CatalogMeta.fromJson(Map<String, Object?> json) =>
      _$CatalogMetaFromJson(json);
}
