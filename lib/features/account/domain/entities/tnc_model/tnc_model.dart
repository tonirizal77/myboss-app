import 'package:freezed_annotation/freezed_annotation.dart';

part 'tnc_model.freezed.dart';
part 'tnc_model.g.dart';

@freezed
abstract class TncModel with _$TncModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TncModel({
    @Default(0) int id,
    @Default(0) int storeId,
    @Default("") String sitenavLinkTypeId,
    @Default("") String title,
    @Default("") String description,
  }) = _TncModel;

  factory TncModel.fromJson(Map<String, dynamic> json) =>
      _$TncModelFromJson(json);
}
