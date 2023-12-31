import 'package:freezed_annotation/freezed_annotation.dart';

import 'language.map.d.dart';
import 'price.per.currency.d.dart';

part 'prod.d.freezed.dart';

part 'prod.d.g.dart';

sealed class Prod {
  const Prod._();
}

@freezed
@immutable
class ProdLite extends Prod with _$ProdLite {
  const ProdLite._() : super._();

  const factory ProdLite({
    required String productId,
    required String productNameEn,
    required LanguageMap productNameOtherLanguages,
    required PricePerCurrency pricePerCurrency,
  }) = _ProdLite;

  factory ProdLite.fromJson(Map<String, dynamic> json) =>
      _$ProdLiteFromJson(json);
}

@freezed
@immutable
class ProdDetails extends Prod with _$ProdDetails {
  const ProdDetails._() : super._();

  const factory ProdDetails({
    required String productId,
    required String productNameEn,
    required LanguageMap productNameOtherLanguages,
    required PricePerCurrency pricePerCurrency,
    required int stockQuantity,
    required int discount,
  }) = _ProdDetails;

  factory ProdDetails.fromJson(Map<String, dynamic> json) =>
      _$ProdDetailsFromJson(json);
}
