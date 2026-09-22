import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_model.freezed.dart';
part 'contact_us_model.g.dart';

@freezed
abstract class ContactUsModel with _$ContactUsModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ContactUsModel({
    @Default(0) int id,
    @Default(0) int storeId,
    @Default("") String title,
    @Default("") String links,
  }) = _ContactUsModel;

  factory ContactUsModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsModelFromJson(json);
}
