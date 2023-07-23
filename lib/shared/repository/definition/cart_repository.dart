import 'package:buytout/shared/domain/product_cart_item.dart';
import 'package:buytout/shared/index.dart';

abstract interface class CartRepository {
  Future<Cart> find();

  Future<Cart> update({required Cart cart});

  Future<bool> clear();

  Future<Iterable<ProductCartItem>> findAll();

  Future<int> insert({required ProductCartItem productCartItem});
}
