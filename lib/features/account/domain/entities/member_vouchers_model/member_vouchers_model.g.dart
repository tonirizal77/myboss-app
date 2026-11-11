// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_vouchers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MemberVouchersModel _$MemberVouchersModelFromJson(Map<String, dynamic> json) =>
    _MemberVouchersModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map(
                (e) => MemberVoucherModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? null
          : MemberVouchersMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MemberVouchersModelToJson(
  _MemberVouchersModel instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};

_MemberVoucherModel _$MemberVoucherModelFromJson(Map<String, dynamic> json) =>
    _MemberVoucherModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      discountLabel: json['discount_label'] as String? ?? '',
      expiryDate: json['expiry_date'] as String?,
      code: _readCode(json, 'code') as String?,
      usedAt: _readUsedAt(json, 'used_at') as String?,
      tnc:
          (json['tnc'] as List<dynamic>?)?.map((e) => e as String?).toList() ??
          const [],
      detailVoucher: json['detail_voucher'],
    );

Map<String, dynamic> _$MemberVoucherModelToJson(_MemberVoucherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'discount_label': instance.discountLabel,
      'expiry_date': instance.expiryDate,
      'code': instance.code,
      'used_at': instance.usedAt,
      'tnc': instance.tnc,
      'detail_voucher': instance.detailVoucher,
    };

_MemberVouchersMeta _$MemberVouchersMetaFromJson(Map<String, dynamic> json) =>
    _MemberVouchersMeta(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      perPage: (json['per_page'] as num?)?.toInt() ?? 15,
      totalPage: (json['total_page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$MemberVouchersMetaToJson(_MemberVouchersMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'per_page': instance.perPage,
      'total_page': instance.totalPage,
    };
