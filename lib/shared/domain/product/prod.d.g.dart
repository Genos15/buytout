// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProdLite _$$_ProdLiteFromJson(Map<String, dynamic> json) => _$_ProdLite(
      productId: json['productId'] as String,
      productNameEn: json['productNameEn'] as String,
      productNameOtherLanguages: LanguageMap.fromJson(
          json['productNameOtherLanguages'] as Map<String, dynamic>),
      pricePerCurrency: PricePerCurrency.fromJson(
          json['pricePerCurrency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProdLiteToJson(_$_ProdLite instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productNameEn': instance.productNameEn,
      'productNameOtherLanguages': instance.productNameOtherLanguages,
      'pricePerCurrency': instance.pricePerCurrency,
    };

_$_ProdDetails _$$_ProdDetailsFromJson(Map<String, dynamic> json) =>
    _$_ProdDetails(
      productId: json['productId'] as String,
      productNameEn: json['productNameEn'] as String,
      productNameOtherLanguages: LanguageMap.fromJson(
          json['productNameOtherLanguages'] as Map<String, dynamic>),
      pricePerCurrency: PricePerCurrency.fromJson(
          json['pricePerCurrency'] as Map<String, dynamic>),
      stockQuantity: json['stockQuantity'] as int,
      discount: json['discount'] as int,
    );

Map<String, dynamic> _$$_ProdDetailsToJson(_$_ProdDetails instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productNameEn': instance.productNameEn,
      'productNameOtherLanguages': instance.productNameOtherLanguages,
      'pricePerCurrency': instance.pricePerCurrency,
      'stockQuantity': instance.stockQuantity,
      'discount': instance.discount,
    };
