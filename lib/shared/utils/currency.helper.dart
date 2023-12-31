import 'package:buytout/shared/index.dart';

const kLocale = 'fr';

abstract class CurrencyHelper {
  static final _formatter = NumberFormat.simpleCurrency(
    name: 'FCFA',
    decimalDigits: 0,
    locale: kLocale,
  );

  static String format(num number) => _formatter.format(number);

  static String formatByCode(num number, String currencyCode) {
    final formatter = NumberFormat.simpleCurrency(
      name: currencyCode,
      decimalDigits: 0,
      locale: kLocale,
    );

    return formatter.format(number);
  }
}
