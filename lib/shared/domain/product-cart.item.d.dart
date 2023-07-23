import 'package:freezed_annotation/freezed_annotation.dart';

part 'product-cart.item.d.freezed.dart';

part 'product-cart.item.d.g.dart';

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
