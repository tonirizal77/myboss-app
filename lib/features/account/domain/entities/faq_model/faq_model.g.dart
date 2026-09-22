// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FaqModel _$FaqModelFromJson(Map<String, dynamic> json) => _FaqModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  storeId: (json['store_id'] as num?)?.toInt() ?? 0,
  question: json['question'] as String? ?? "",
  answer: json['answer'] as String? ?? "",
  createdTime: json['created_time'] as String? ?? "",
  modifiedTime: json['modified_time'] as String? ?? "",
  viewOrder: (json['view_order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FaqModelToJson(_FaqModel instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'question': instance.question,
  'answer': instance.answer,
  'created_time': instance.createdTime,
  'modified_time': instance.modifiedTime,
  'view_order': instance.viewOrder,
};
