

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared/shared.dart';

part 'create_feedback.g.dart';

@JsonSerializable()
class CreateFeedback {
  final int orderId;
  final String desc;
  final int rate;
  final List<FeedBackType> type;
  CreateFeedback(this.orderId, this.desc, this.rate, this.type);

  factory CreateFeedback.fromJson(Map<String, dynamic> json) => _$CreateFeedbackFromJson(json);
  Map<String, dynamic> toJson() => _$CreateFeedbackToJson(this);
}