import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

import '../customer_model/customer_model.dart';

part 'token_model.freezed.dart';
part 'token_model.g.dart';

@freezed
abstract class TokenModel with _$TokenModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenModel({
    String? accessToken,
    String? refreshToken,
    @DateTimeStringOrNullSerializer() DateTime? expiredAt,
    CustomerModel? customer,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
