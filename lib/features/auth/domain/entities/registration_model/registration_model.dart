import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_model.freezed.dart';
part 'registration_model.g.dart';

@freezed
abstract class RegistrationModel with _$RegistrationModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RegistrationModel({
    @Default("") String email,
    @Default("") String name,
    @Default("") String phone,
    @Default(0) int avatarId,
    @Default("") String otpCode,
  }) = _RegistrationModel;

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$RegistrationModelFromJson(json);
}
