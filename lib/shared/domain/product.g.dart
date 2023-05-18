// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryPreview: ProductCategoryPreview.fromJson(
          json['categoryPreview'] as Map<String, dynamic>),
      displayPrice: json['displayPrice'] as int,
      price: json['price'] as int,
      image1: json['image1'] as String,
      image2: json['image2'] as String,
      image3: json['image3'] as String,
      image4: json['image4'] as String,
      image5: json['image5'] as String,
      description: json['description'] as String,
      percentage: json['percentage'] as int? ?? 0,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryPreview': instance.categoryPreview,
      'displayPrice': instance.displayPrice,
      'price': instance.price,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'image5': instance.image5,
      'description': instance.description,
      'percentage': instance.percentage,
      'isFavorite': instance.isFavorite,
    };
