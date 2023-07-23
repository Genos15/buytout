// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductInput _$$ProductInputFromJson(Map<String, dynamic> json) =>
    _$ProductInput(
      id: json['id'] as String,
      name: json['name'] as String,
      displayPrice: json['displayPrice'] as int,
      displayPriceAsString: json['displayPriceAsString'] as String,
      price: json['price'] as int,
      priceAsString: json['priceAsString'] as String,
      currency: json['currency'] as String,
      image1: json['image1'] as String,
      percentage: json['percentage'] as int? ?? 0,
      isFavorite: json['isFavorite'] as int? ?? 0,
      inStock: json['inStock'] as int? ?? mockedInStock,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProductInputToJson(_$ProductInput instance) =>
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
      'runtimeType': instance.$type,
    };

_$ProductOutput _$$ProductOutputFromJson(Map<String, dynamic> json) =>
    _$ProductOutput(
      id: json['id'] as String,
      name: json['name'] as String,
      displayPrice: json['displayPrice'] as int,
      displayPriceAsString: json['displayPriceAsString'] as String,
      price: json['price'] as int,
      priceAsString: json['priceAsString'] as String,
      description: json['description'] as String,
      currency: json['currency'] as String,
      image1: json['image1'] as String,
      image2: json['image2'] as String?,
      image3: json['image3'] as String?,
      image4: json['image4'] as String?,
      image5: json['image5'] as String?,
      percentage: json['percentage'] as int? ?? 0,
      favorite: json['favorite'] as int? ?? 0,
      inStock: json['inStock'] as int? ?? mockedInStock,
      nameHighlight: json['nameHighlight'] as String?,
      descriptionHighlight: json['descriptionHighlight'] as String?,
      queryScore: (json['queryScore'] as num?)?.toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ProductOutputToJson(_$ProductOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'displayPrice': instance.displayPrice,
      'displayPriceAsString': instance.displayPriceAsString,
      'price': instance.price,
      'priceAsString': instance.priceAsString,
      'description': instance.description,
      'currency': instance.currency,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'image5': instance.image5,
      'percentage': instance.percentage,
      'favorite': instance.favorite,
      'inStock': instance.inStock,
      'nameHighlight': instance.nameHighlight,
      'descriptionHighlight': instance.descriptionHighlight,
      'queryScore': instance.queryScore,
      'runtimeType': instance.$type,
    };
