// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product-cart.item.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCartItemImpl _$$ProductCartItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCartItemImpl(
      id: json['id'] as String,
      productId: json['productId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$ProductCartItemImplToJson(
        _$ProductCartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
