import 'package:buytout/shared/index.dart';

part 'cart.d.g.dart';

part 'cart.d.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    required String id,
    required Map<String, (int, Product)> products,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);

  int get _totalPrice {
    return products.values.fold(
      0,
      (reducer, element) {
        final quantity = element.$1;
        final price = element.$2.displayPrice;
        return reducer + (quantity * price);
      },
    );
  }

  String displayTotalPriceAsString() {
    if (products.isEmpty) {
      return '-';
    }
    // final currency = products.values.first.$2.currency;
    const currency = 'FCFA';
    return [_totalPrice, currency].join(' ');
  }
}
