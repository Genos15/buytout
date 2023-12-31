import 'package:buytout/shared/index.dart';

part 'shopping-cart.item.d.freezed.dart';

part 'shopping-cart.item.d.g.dart';

@freezed
@immutable
class ShoppingCartItem with _$ShoppingCartItem {
  const ShoppingCartItem._();

  const factory ShoppingCartItem({
    required int quantity,
    required ProdLite product,
    @Default(null) dynamic productAttribute,
  }) = _ShoppingCartItem;

  factory ShoppingCartItem.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartItemFromJson(json);
}
