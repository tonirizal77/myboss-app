import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen_code_model.freezed.dart';
part 'gen_code_model.g.dart';

@freezed
abstract class GenCodeModel with _$GenCodeModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GenCodeModel({
    @Default(0) int id,
    @Default("") String codeExpiry,
    @Default("") String code,
  }) = _GenCodeModel;

  factory GenCodeModel.fromJson(Map<String, dynamic> json) =>
      _$GenCodeModelFromJson(json);
}
