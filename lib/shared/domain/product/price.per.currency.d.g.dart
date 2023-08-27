// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.per.currency.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PricePerCurrency _$$_PricePerCurrencyFromJson(Map<String, dynamic> json) =>
    _$_PricePerCurrency(
      xaf: json['XAF'] as int,
      euro: json['EURO'] as int? ?? null,
      dollar: json['DOLLAR'] as int? ?? null,
    );

Map<String, dynamic> _$$_PricePerCurrencyToJson(_$_PricePerCurrency instance) =>
    <String, dynamic>{
      'XAF': instance.xaf,
      'EURO': instance.euro,
      'DOLLAR': instance.dollar,
    };
