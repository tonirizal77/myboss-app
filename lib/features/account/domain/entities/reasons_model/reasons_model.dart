import 'package:freezed_annotation/freezed_annotation.dart';

part 'reasons_model.freezed.dart';
part 'reasons_model.g.dart';

@freezed
abstract class ReasonsModel with _$ReasonsModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ReasonsModel({
    List<ReasonModel>? data,
    @Default(0) int status,
    @Default(0) int error,
  }) = _ReasonsModel;

  factory ReasonsModel.fromJson(Map<String, dynamic> json) =>
      _$ReasonsModelFromJson(json);
}

@freezed
abstract class ReasonModel with _$ReasonModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ReasonModel({
    @Default(0) int reasonId,
    @Default("") String label,
  }) = _ReasonModel;

  factory ReasonModel.fromJson(Map<String, dynamic> json) =>
      _$ReasonModelFromJson(json);
}
