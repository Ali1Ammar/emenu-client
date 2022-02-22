// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateFeedback _$CreateFeedbackFromJson(Map<String, dynamic> json) =>
    CreateFeedback(
      json['orderId'] as int,
      json['desc'] as String,
      json['rate'] as int,
      (json['type'] as List<dynamic>)
          .map((e) => $enumDecode(_$FeedBackTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$CreateFeedbackToJson(CreateFeedback instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'desc': instance.desc,
      'rate': instance.rate,
      'type': instance.type.map((e) => _$FeedBackTypeEnumMap[e]).toList(),
    };

const _$FeedBackTypeEnumMap = {
  FeedBackType.BadFood: 'BadFood',
  FeedBackType.BadService: 'BadService',
  FeedBackType.BadTiming: 'BadTiming',
};
