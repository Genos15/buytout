// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductUiStateImpl _$$ProductUiStateImplFromJson(Map<String, dynamic> json) =>
    _$ProductUiStateImpl(
      input: ProdLite.fromJson(json['input'] as Map<String, dynamic>),
      product: ProdDetails.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductUiStateImplToJson(
        _$ProductUiStateImpl instance) =>
    <String, dynamic>{
      'input': instance.input,
      'product': instance.product,
    };
