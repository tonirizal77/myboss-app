import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_model.freezed.dart';
part 'products_model.g.dart';

@freezed
abstract class ProductsModel with _$ProductsModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProductsModel({
    @Default("") String barcode,
    @Default(0) int brandId,
    @Default("") String brandName,
    @Default(0) int categoryId,
    @Default("") String categoryNameEn,
    @Default("") String categoryNameId,
    @Default("") String description,
    @Default(0) int id,
    @Default(0) int isOutStock,
    @Default("") String name,
    @Default("") String notes,
    @Default("") String photo,
    @Default(0) int photoId,
    @Default("") String photoMd,
    @Default("") String productGroup,
    @Default(0) int productGroupId,
    @Default(0) int published,
    @Default("") String sku,
    @Default("") String status,
    @Default(0) int storeId,
    @Default("") String type,
    @Default(0) int viewed,
    @Default("") String viewedTime,
  }) = _ProductsModel;

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
}
