// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPreview _$$_ProductPreviewFromJson(Map<String, dynamic> json) =>
    _$_ProductPreview(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryPreview: ProductCategoryPreview.fromJson(
          json['categoryPreview'] as Map<String, dynamic>),
      displayPrice: json['displayPrice'] as int,
      price: json['price'] as int,
      imageUrl: json['imageUrl'] as String,
      percentage: json['percentage'] as int? ?? 0,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductPreviewToJson(_$_ProductPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryPreview': instance.categoryPreview,
      'displayPrice': instance.displayPrice,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'percentage': instance.percentage,
      'isFavorite': instance.isFavorite,
    };
