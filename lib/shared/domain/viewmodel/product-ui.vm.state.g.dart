// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductUiState _$$_ProductUiStateFromJson(Map<String, dynamic> json) =>
    _$_ProductUiState(
      input: ProdLite.fromJson(json['input'] as Map<String, dynamic>),
      product: ProdDetails.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductUiStateToJson(_$_ProductUiState instance) =>
    <String, dynamic>{
      'input': instance.input,
      'product': instance.product,
    };
