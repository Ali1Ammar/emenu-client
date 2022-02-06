// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFeedBack _$CustomerFeedBackFromJson(Map<String, dynamic> json) =>
    CustomerFeedBack(
      json['id'] as int,
      json['orderId'] as int,
      json['desc'] as String,
      json['rate'] as int,
      (json['type'] as List<dynamic>)
          .map((e) => $enumDecode(_$FeedBackTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$CustomerFeedBackToJson(CustomerFeedBack instance) =>
    <String, dynamic>{
      'id': instance.id,
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
