import 'package:buytout/shared/index.dart';

abstract class CurrencyHelper {
  static final _formatter = NumberFormat.simpleCurrency(
    name: 'FCFA',
    decimalDigits: 0,
    locale: 'fr',
  );

  static String format(num number) => _formatter.format(number);
}
