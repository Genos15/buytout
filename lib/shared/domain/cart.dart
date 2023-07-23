import 'package:buytout/shared/index.dart';

part 'cart.g.dart';

part 'cart.freezed.dart';

@freezed
class Cart with _$Cart {
  const Cart._();

  const factory Cart({
    required String id,
    required Map<String, (int, Product)> products,
  }) = _Cart;

  factory Cart.fromJson(Map<String, Object?> json) => _$CartFromJson(json);
}
