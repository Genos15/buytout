// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryUiStateImpl _$$CategoryUiStateImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryUiStateImpl(
      categoryId: json['categoryId'] as String,
      totalProductCount: json['totalProductCount'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProdLite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryUiStateImplToJson(
        _$CategoryUiStateImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'totalProductCount': instance.totalProductCount,
      'products': instance.products,
    };
