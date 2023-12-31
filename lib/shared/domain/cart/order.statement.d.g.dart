// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.statement.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderStatementImpl _$$OrderStatementImplFromJson(Map<String, dynamic> json) =>
    _$OrderStatementImpl(
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

Map<String, dynamic> _$$OrderStatementImplToJson(
        _$OrderStatementImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'deliveryFee': instance.deliveryFee,
      'serviceFee': instance.serviceFee,
      'productTotalAmount': instance.productTotalAmount,
      'totalAmount': instance.totalAmount,
      'currencyDetail': instance.currencyDetail,
    };
