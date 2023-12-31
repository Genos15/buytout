import 'dart:async';

import 'package:buytout/shared/index.dart';

final cartServiceProvider =
    Provider.autoDispose<CartService>((ref) => CartServiceImpl(
          cartRepository: ref.watch(cartRepositoryProvider),
        ));

class CartServiceImpl implements CartService {
  final CartRepository cartRepository;

  CartServiceImpl({
    required this.cartRepository,
  });

  final List<FutureOr<void> Function()> listeners = [];

  @override
  Future<bool> addToCart({
    required String productId,
    required int quantity,
  }) async {
    await cartRepository.addToCart(productId: productId, quantity: quantity);

    /// notify all [listeners] that the product has been added in cart
    for (var listener in listeners) {
      await Future.microtask(() => listener.call());
    }

    return true;
  }

  @override
  void addListener(void Function() listener) {
    listeners.add(listener);
  }

  @override
  int getListenerCount() {
    return listeners.length;
  }

  @override
  void removeListener(void Function() listener) {
    listeners.remove(listener);
  }

  @override
  Future<OrderStatement> getCart() {
    return cartRepository.getCart();
  }
}
