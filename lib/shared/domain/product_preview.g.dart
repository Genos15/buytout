// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductPreview _$$_ProductPreviewFromJson(Map<String, dynamic> json) =>
    _$_ProductPreview(
      id: json['id'] as String,
      name: json['name'] as String,
      displayPrice: json['displayPrice'] as int,
      displayPriceAsString: json['displayPriceAsString'] as String,
      price: json['price'] as int,
      priceAsString: json['priceAsString'] as String,
      currency: json['currency'] as String,
      image1: json['image1'] as String,
      percentage: json['percentage'] as int? ?? 0,
      isFavorite: json['isFavorite'] as bool? ?? false,
      inStock: json['inStock'] as int? ?? mockedInStock,
    );

Map<String, dynamic> _$$_ProductPreviewToJson(_$_ProductPreview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayPrice': instance.displayPrice,
      'displayPriceAsString': instance.displayPriceAsString,
      'price': instance.price,
      'priceAsString': instance.priceAsString,
      'currency': instance.currency,
      'image1': instance.image1,
      'percentage': instance.percentage,
      'isFavorite': instance.isFavorite,
      'inStock': instance.inStock,
    };
