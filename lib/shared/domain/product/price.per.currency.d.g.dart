// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.per.currency.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PricePerCurrencyImpl _$$PricePerCurrencyImplFromJson(
        Map<String, dynamic> json) =>
    _$PricePerCurrencyImpl(
      xaf: json['XAF'] as int,
      euro: json['EURO'] as int? ?? null,
      dollar: json['DOLLAR'] as int? ?? null,
    );

Map<String, dynamic> _$$PricePerCurrencyImplToJson(
        _$PricePerCurrencyImpl instance) =>
    <String, dynamic>{
      'XAF': instance.xaf,
      'EURO': instance.euro,
      'DOLLAR': instance.dollar,
    };
