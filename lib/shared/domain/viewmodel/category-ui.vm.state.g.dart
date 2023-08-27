// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryUiState _$$_CategoryUiStateFromJson(Map<String, dynamic> json) =>
    _$_CategoryUiState(
      categoryId: json['categoryId'] as String,
      totalProductCount: json['totalProductCount'] as int,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProdLite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryUiStateToJson(_$_CategoryUiState instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'totalProductCount': instance.totalProductCount,
      'products': instance.products,
    };
