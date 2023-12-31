import 'package:buytout/shared/index.dart';

abstract interface class CartRepository {
  Future<bool> addToCart({
    required String productId,
    required int quantity,
  });

  Future<OrderStatement> getCart();
}
