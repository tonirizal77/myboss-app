/// Response dari User Login
///

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

import '../customer_model/customer_model.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

/// Ganti ke TokenModel
@freezed
abstract class LoginModel with _$LoginModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoginModel({
    String? accessToken,
    String? refreshToken,
    @DateTimeStringOrNullSerializer() DateTime? expiredAt,
    CustomerModel? customer,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
