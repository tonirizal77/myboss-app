import 'package:freezed_annotation/freezed_annotation.dart';

part 'stamps_model.freezed.dart';
part 'stamps_model.g.dart';

@freezed
abstract class StampsModel with _$StampsModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsModel({
    @Default(0) int level,
    @Default("") String levelName,
    @Default(0) int maxStamp,
    @Default(0) int filledStamp,
    @Default(0) int maxTotalStamp,
    @Default(0) int stampFreeCount,
    @Default(0) int cumulativePrev,
    @Default(0) int cycle,
    @Default(0) int totalPoint,
    @Default(0) int stampsNeeded,
  }) = _StampsModel;

  factory StampsModel.fromJson(Map<String, dynamic> json) =>
      _$StampsModelFromJson(json);
}
