// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product-cart-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductCartUiState _$$_ProductCartUiStateFromJson(
        Map<String, dynamic> json) =>
    _$_ProductCartUiState(
      quantity: json['quantity'] as int,
      product: ProdDetails.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductCartUiStateToJson(
        _$_ProductCartUiState instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'product': instance.product,
    };
