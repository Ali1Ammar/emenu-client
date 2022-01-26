import 'package:shared/shared.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part "new_ordertype_value.g.dart";

@JsonSerializable()
class NewOrderTypeValue {
  String? name = 'الرئيسية';
  String? paymentMsg="توجهة الى كاشير للدفع حاليا لاكمال الطلب رجاءا";
  String? deliverMsg="تم اعداد طلبك وسيتم توصيله من الويتر حاليا";
  DeliverType? deliverType = DeliverType.employeerDeliverFood;
  PaymentType? paymentType = PaymentType.afterTakeOrder ;

  SelectKitchenVia selectKitchenVia = SelectKitchenVia.None;
  // NewOrderTypeValue(this.name, this.paymentMsg, this.deliverType, this.selectKitchenVia);

  // factory NewOrderTypeValue.fromJson(Map<String, dynamic> json) => _$NewOrderTypeValueFromJson(json);
  Map<String, dynamic> toJson() => _$NewOrderTypeValueToJson(this);
}
