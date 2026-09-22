import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';

part 'stamps_history_model.freezed.dart';
part 'stamps_history_model.g.dart';

@freezed
abstract class StampsHistoryModel with _$StampsHistoryModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsHistoryModel({
    List<StampsHistory>? data,
    @Default(Meta()) Meta meta,
    @Default(0) int status,
    @Default(0) int error,
  }) = _StampsHistoryModel;

  factory StampsHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$StampsHistoryModelFromJson(json);
}

@freezed
abstract class StampsHistory with _$StampsHistory {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsHistory({
    @Default(0) int balancePoints,
    @Default(0) int cancelledPoints,
    @Default("") String earnedDate,
    @Default("") String earnedPoints,
    @Default("") String expiryDate,
    @Default(0) int redeemedPoints,
    @Default(0) int salesOrderId,
    @Default(0) int salesReturnId,
    @Default("") String status,
    @Default("") String type,
  }) = _StampsHistory;

  factory StampsHistory.fromJson(Map<String, dynamic> json) =>
      _$StampsHistoryFromJson(json);
}
