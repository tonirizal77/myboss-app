import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'verify_model.freezed.dart';
part 'verify_model.g.dart';

@freezed
abstract class VerifyModel with _$VerifyModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VerifyModel({
    @Default(FromPage.initial) FromPage fromPage,
    @Default("") String phone,
    @Default("") String newPhone,
    @Default("") String email,
    @Default("") String newEmail,
    @Default("") String otp,
    @Default("") String newOtp,
    @Default(RegistrationModel()) RegistrationModel register,
  }) = _VerifyModel;

  factory VerifyModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyModelFromJson(json);
}
