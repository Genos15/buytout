import 'package:buytout/shared/index.dart';

part 'currency-detail.d.freezed.dart';

part 'currency-detail.d.g.dart';

@freezed
@immutable
class CurrencyDetail with _$CurrencyDetail {
  const CurrencyDetail._();

  const factory CurrencyDetail({
    required String currencyCode,
    required String currencySymbol
  }) = _CurrencyDetail;

  factory CurrencyDetail.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDetailFromJson(json);
}
