// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderCWProxy {
  Order customerFeedBack(CustomerFeedBack? customerFeedBack);

  Order customerSpot(CustomerSpot? customerSpot);

  Order id(int id);

  Order isPayed(bool isPayed);

  Order orderItems(List<OrderItem> orderItems);

  Order price(double price);

  Order status(OrderStatus status);

  Order type(OrderType type);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    CustomerFeedBack? customerFeedBack,
    CustomerSpot? customerSpot,
    int? id,
    bool? isPayed,
    List<OrderItem>? orderItems,
    double? price,
    OrderStatus? status,
    OrderType? type,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrder.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrder.copyWith.fieldName(...)`
class _$OrderCWProxyImpl implements _$OrderCWProxy {
  final Order _value;

  const _$OrderCWProxyImpl(this._value);

  @override
  Order customerFeedBack(CustomerFeedBack? customerFeedBack) =>
      this(customerFeedBack: customerFeedBack);

  @override
  Order customerSpot(CustomerSpot? customerSpot) =>
      this(customerSpot: customerSpot);

  @override
  Order id(int id) => this(id: id);

  @override
  Order isPayed(bool isPayed) => this(isPayed: isPayed);

  @override
  Order orderItems(List<OrderItem> orderItems) => this(orderItems: orderItems);

  @override
  Order price(double price) => this(price: price);

  @override
  Order status(OrderStatus status) => this(status: status);

  @override
  Order type(OrderType type) => this(type: type);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Order(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Order(...).copyWith(id: 12, name: "My name")
  /// ````
  Order call({
    Object? customerFeedBack = const $CopyWithPlaceholder(),
    Object? customerSpot = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? isPayed = const $CopyWithPlaceholder(),
    Object? orderItems = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return Order(
      customerFeedBack: customerFeedBack == const $CopyWithPlaceholder()
          ? _value.customerFeedBack
          // ignore: cast_nullable_to_non_nullable
          : customerFeedBack as CustomerFeedBack?,
      customerSpot: customerSpot == const $CopyWithPlaceholder()
          ? _value.customerSpot
          // ignore: cast_nullable_to_non_nullable
          : customerSpot as CustomerSpot?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      isPayed: isPayed == const $CopyWithPlaceholder() || isPayed == null
          ? _value.isPayed
          // ignore: cast_nullable_to_non_nullable
          : isPayed as bool,
      orderItems:
          orderItems == const $CopyWithPlaceholder() || orderItems == null
              ? _value.orderItems
              // ignore: cast_nullable_to_non_nullable
              : orderItems as List<OrderItem>,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as double,
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as OrderStatus,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as OrderType,
    );
  }
}

extension $OrderCopyWith on Order {
  /// Returns a callable class that can be used as follows: `instanceOfclass Order.name.copyWith(...)` or like so:`instanceOfclass Order.name.copyWith.fieldName(...)`.
  _$OrderCWProxy get copyWith => _$OrderCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      id: json['id'] as int,
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      customerSpot: json['customerSpot'] == null
          ? null
          : CustomerSpot.fromJson(json['customerSpot'] as Map<String, dynamic>),
      customerFeedBack: json['customerFeedBack'] == null
          ? null
          : CustomerFeedBack.fromJson(
              json['customerFeedBack'] as Map<String, dynamic>),
      type: OrderType.fromJson(json['type'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      isPayed: json['isPayed'] as bool,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status],
      'customerSpot': instance.customerSpot?.toJson(),
      'customerFeedBack': instance.customerFeedBack?.toJson(),
      'type': instance.type.toJson(),
      'price': instance.price,
      'isPayed': instance.isPayed,
      'orderItems': instance.orderItems.map((e) => e.toJson()).toList(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.WaitPayment: 'WaitPayment',
  OrderStatus.WaitInKitchen: 'WaitInKitchen',
  OrderStatus.DoneByKitchen: 'DoneByKitchen',
  OrderStatus.Canceled: 'Canceled',
  OrderStatus.Done: 'Done',
};

OrderChange _$OrderChangeFromJson(Map<String, dynamic> json) => OrderChange(
      json['id'] as int,
      $enumDecodeNullable(_$OrderStatusEnumMap, json['status']),
      json['isPayed'] as bool?,
    );

Map<String, dynamic> _$OrderChangeToJson(OrderChange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': _$OrderStatusEnumMap[instance.status],
      'isPayed': instance.isPayed,
    };
