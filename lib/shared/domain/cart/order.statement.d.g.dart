// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.statement.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderStatement _$$_OrderStatementFromJson(Map<String, dynamic> json) =>
    _$_OrderStatement(
      products: (json['products'] as List<dynamic>)
          .map((e) => ShoppingCartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryAmount: json['deliveryAmount'] as int,
      productTotalAmount: json['productTotalAmount'] as int,
      totalAmount: json['totalAmount'] as int,
      currency: json['currency'] as String,
    );

Map<String, dynamic> _$$_OrderStatementToJson(_$_OrderStatement instance) =>
    <String, dynamic>{
      'products': instance.products,
      'deliveryAmount': instance.deliveryAmount,
      'productTotalAmount': instance.productTotalAmount,
      'totalAmount': instance.totalAmount,
      'currency': instance.currency,
    };
