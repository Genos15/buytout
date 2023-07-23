import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_cart_item.freezed.dart';

part 'product_cart_item.g.dart';

@freezed
@immutable
class ProductCartItem with _$ProductCartItem {
  const ProductCartItem._();

  const factory ProductCartItem({
    required String id,
    required String productId,
    required int quantity,
  }) = _ProductCartItem;

  factory ProductCartItem.fromJson(Map<String, Object?> json) =>
      _$ProductCartItemFromJson(json);
}
