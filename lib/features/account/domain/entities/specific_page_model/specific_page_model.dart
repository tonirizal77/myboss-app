import 'package:freezed_annotation/freezed_annotation.dart';

part 'specific_page_model.freezed.dart';
part 'specific_page_model.g.dart';

@freezed
abstract class SpecificPageModel with _$SpecificPageModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SpecificPageModel({
    @Default(0) int id,
    @Default(0) int storeId,
    @Default('') String title,
    @Default('') String sitenavLinkTypeId,
    @Default('') String description,
    @Default('') String metaDescription,
    @Default('') String metaKeywords,
    @Default(['']) List<String> otherlinks,
    @Default([]) List<dynamic> photos,
  }) = _SpecificPageModel;

  factory SpecificPageModel.fromJson(Map<String, dynamic> json) =>
      _$SpecificPageModelFromJson(json);
}
