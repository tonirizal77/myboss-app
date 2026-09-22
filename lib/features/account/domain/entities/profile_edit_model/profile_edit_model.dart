import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/features/account/account_ft.dart';

part 'profile_edit_model.freezed.dart';
part 'profile_edit_model.g.dart';

@freezed
abstract class ProfileEditModel with _$ProfileEditModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ProfileEditModel({
    @Default(AvatarsModel()) AvatarsModel avatar,
    @Default("") String name,
  }) = _ProfileEditModel;

  factory ProfileEditModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileEditModelFromJson(json);
}
