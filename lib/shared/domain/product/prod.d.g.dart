// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProdLiteImpl _$$ProdLiteImplFromJson(Map<String, dynamic> json) =>
    _$ProdLiteImpl(
      productId: json['productId'] as String,
      productNameEn: json['productNameEn'] as String,
      productNameOtherLanguages: LanguageMap.fromJson(
          json['productNameOtherLanguages'] as Map<String, dynamic>),
      pricePerCurrency: PricePerCurrency.fromJson(
          json['pricePerCurrency'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProdLiteImplToJson(_$ProdLiteImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productNameEn': instance.productNameEn,
      'productNameOtherLanguages': instance.productNameOtherLanguages,
      'pricePerCurrency': instance.pricePerCurrency,
    };

_$ProdDetailsImpl _$$ProdDetailsImplFromJson(Map<String, dynamic> json) =>
    _$ProdDetailsImpl(
      productId: json['productId'] as String,
      productNameEn: json['productNameEn'] as String,
      productNameOtherLanguages: LanguageMap.fromJson(
          json['productNameOtherLanguages'] as Map<String, dynamic>),
      pricePerCurrency: PricePerCurrency.fromJson(
          json['pricePerCurrency'] as Map<String, dynamic>),
      stockQuantity: json['stockQuantity'] as int,
      discount: json['discount'] as int,
    );

Map<String, dynamic> _$$ProdDetailsImplToJson(_$ProdDetailsImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productNameEn': instance.productNameEn,
      'productNameOtherLanguages': instance.productNameOtherLanguages,
      'pricePerCurrency': instance.pricePerCurrency,
      'stockQuantity': instance.stockQuantity,
      'discount': instance.discount,
    };
