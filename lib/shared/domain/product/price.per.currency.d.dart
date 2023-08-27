import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.per.currency.d.freezed.dart';

part 'price.per.currency.d.g.dart';

@freezed
@immutable
class PricePerCurrency with _$PricePerCurrency {
  const PricePerCurrency._();

  @JsonSerializable(explicitToJson: true)
  const factory PricePerCurrency({
    @JsonKey(name: 'XAF') required int xaf,
    @JsonKey(name: 'EURO') @Default(null) int? euro,
    @JsonKey(name: 'DOLLAR') @Default(null) int? dollar,
  }) = _PricePerCurrency;

  factory PricePerCurrency.fromJson(Map<String, dynamic> json) =>
      _$PricePerCurrencyFromJson(json);
}
