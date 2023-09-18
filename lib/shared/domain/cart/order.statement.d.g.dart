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
      deliveryFee: json['deliveryFee'] as int,
      serviceFee: json['serviceFee'] as int,
      productTotalAmount: json['productTotalAmount'] as int,
      totalAmount: json['totalAmount'] as int,
      currencyDetail: CurrencyDetail.fromJson(
          json['currencyDetail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderStatementToJson(_$_OrderStatement instance) =>
    <String, dynamic>{
      'products': instance.products,
      'deliveryFee': instance.deliveryFee,
      'serviceFee': instance.serviceFee,
      'productTotalAmount': instance.productTotalAmount,
      'totalAmount': instance.totalAmount,
      'currencyDetail': instance.currencyDetail,
    };
