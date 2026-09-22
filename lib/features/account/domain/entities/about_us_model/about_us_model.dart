import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_us_model.freezed.dart';
part 'about_us_model.g.dart';

@freezed
abstract class AboutUsModel with _$AboutUsModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AboutUsModel({
    @Default(0) int id,
    @Default(0) int storeId,
    @Default("") String sitenavLinkTypeId,
    @Default("") String title,
    @Default("") String description,
    dynamic otherlinks,
    @Default([]) List<Photos> photos,
  }) = _AboutUsModel;

  factory AboutUsModel.fromJson(Map<String, dynamic> json) =>
      _$AboutUsModelFromJson(json);
}

@freezed
abstract class Photos with _$Photos {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Photos({
    @Default(0) int width,
    @Default(0) int height,
    @Default(0) int viewOrder,
    @Default("") String title,
    @Default("") String status,
    @Default("") String filename,
  }) = _Photos;

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
