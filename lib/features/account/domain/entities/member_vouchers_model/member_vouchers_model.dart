import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_vouchers_model.freezed.dart';
part 'member_vouchers_model.g.dart';

/// `GET /profile/discount-vouchers?is_used=true|false` - the member's own
/// vouchers, paginated.
@freezed
abstract class MemberVouchersModel with _$MemberVouchersModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MemberVouchersModel({
    @Default([]) List<MemberVoucherModel> data,
    MemberVouchersMeta? meta,
  }) = _MemberVouchersModel;

  factory MemberVouchersModel.fromJson(Map<String, Object?> json) =>
      _$MemberVouchersModelFromJson(json);
}

@freezed
abstract class MemberVoucherModel with _$MemberVoucherModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MemberVoucherModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String discountLabel,

    /// `yyyy-MM-dd`; null = no expiry.
    String? expiryDate,

    /// Voucher code to show / copy (`code` or `voucher_code`).
    @JsonKey(readValue: _readCode) String? code,

    /// When it was used (`used_at` or `used_date`); null = still active.
    @JsonKey(readValue: _readUsedAt) String? usedAt,

    /// Terms, numbered by the server ("1. Discount 10%") - same item shape
    /// as `/promotion/discount-vouchers/list`.
    @Default([]) List<String?> tnc,

    /// Older/alternative terms field; read by `MemberVoucherRemote.terms`
    /// when [tnc] is empty.
    Object? detailVoucher,
  }) = _MemberVoucherModel;

  factory MemberVoucherModel.fromJson(Map<String, Object?> json) =>
      _$MemberVoucherModelFromJson(json);
}

@freezed
abstract class MemberVouchersMeta with _$MemberVouchersMeta {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MemberVouchersMeta({
    @Default(0) int total,
    @Default(1) int page,
    @Default(15) int perPage,
    @Default(1) int totalPage,
  }) = _MemberVouchersMeta;

  factory MemberVouchersMeta.fromJson(Map<String, Object?> json) =>
      _$MemberVouchersMetaFromJson(json);
}

Object? _readCode(Map<dynamic, dynamic> json, String _) =>
    json['code'] ?? json['voucher_code'];

Object? _readUsedAt(Map<dynamic, dynamic> json, String _) =>
    json['used_at'] ?? json['used_date'];
