import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
abstract class FaqModel with _$FaqModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FaqModel({
    @Default(0) int id,
    @Default(0) int storeId,
    @Default("") String question,
    @Default("") String answer,
    @Default("") String createdTime,
    @Default("") String modifiedTime,
    @Default(0) int viewOrder,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}
