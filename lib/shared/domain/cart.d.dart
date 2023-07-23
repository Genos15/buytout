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
}
