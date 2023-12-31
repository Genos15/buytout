// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping-cart.item.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingCartItemImpl _$$ShoppingCartItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingCartItemImpl(
      quantity: json['quantity'] as int,
      product: ProdLite.fromJson(json['product'] as Map<String, dynamic>),
      productAttribute: json['productAttribute'] ?? null,
    );

Map<String, dynamic> _$$ShoppingCartItemImplToJson(
        _$ShoppingCartItemImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'product': instance.product,
      'productAttribute': instance.productAttribute,
    };
