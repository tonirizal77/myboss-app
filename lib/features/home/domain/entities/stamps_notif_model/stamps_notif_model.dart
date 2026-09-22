import 'package:freezed_annotation/freezed_annotation.dart';

part 'stamps_notif_model.freezed.dart';
part 'stamps_notif_model.g.dart';

@freezed
abstract class StampsNotifModel with _$StampsNotifModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsNotifModel({
    @Default("sales") String notifType,
    @Default("HAYO") String notifRemark,
    @Default(DataNotif()) DataNotif data,
  }) = _StampsNotifModel;

  factory StampsNotifModel.fromJson(Map<String, dynamic> json) =>
      _$StampsNotifModelFromJson(json);
}

@freezed
abstract class DataNotif with _$DataNotif {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DataNotif({
    int? customerId,
    int? storeId,
    int? salesOrderId,
    String? salesOrderNo,
    dynamic salesReturnId,
    dynamic salesReturnNo,
  }) = _DataNotif;

  factory DataNotif.fromJson(Map<String, dynamic> json) =>
      _$DataNotifFromJson(json);
}
