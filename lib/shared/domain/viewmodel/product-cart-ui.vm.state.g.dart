// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product-cart-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCartUiStateImpl _$$ProductCartUiStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCartUiStateImpl(
      quantity: json['quantity'] as int,
      product: ProdDetails.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductCartUiStateImplToJson(
        _$ProductCartUiStateImpl instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'product': instance.product,
    };
