// ignore_for_file: constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'customer_feedback.g.dart';

@JsonSerializable()
class CustomerFeedBack {
  final int id;
  final int orderId;
  final String desc;
  final int rate;
  final List<FeedBackType> type;
  CustomerFeedBack(this.id, this.orderId, this.desc, this.rate, this.type);

  factory CustomerFeedBack.fromJson(Map<String, dynamic> json) =>
      _$CustomerFeedBackFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerFeedBackToJson(this);
}

enum FeedBackType {
  BadFood,
  BadService,
  BadTiming,
}

extension FeedBackTypeExt on FeedBackType {
  String get toAr {
    switch (this) {
      case FeedBackType.BadFood:
        return "طعام غير جيد";
      case FeedBackType.BadService:
        return "الخدمة سيئة";
      case FeedBackType.BadTiming:
        return "تاخل في الطلب";
    }
  }
}
