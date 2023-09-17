// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping-cart.item.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingCartItem _$$_ShoppingCartItemFromJson(Map<String, dynamic> json) =>
    _$_ShoppingCartItem(
      quantity: json['quantity'] as int,
      product: ProdLite.fromJson(json['product'] as Map<String, dynamic>),
      productAttribute: json['productAttribute'] ?? null,
    );

Map<String, dynamic> _$$_ShoppingCartItemToJson(_$_ShoppingCartItem instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'product': instance.product,
      'productAttribute': instance.productAttribute,
    };
