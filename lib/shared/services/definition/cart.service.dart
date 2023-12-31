
import 'dart:async';

import 'package:buytout/shared/index.dart';

abstract interface class CartService {

  Future<bool> addToCart({
    required String productId,
    required int quantity,
  });

  Future<OrderStatement> getCart();

  void addListener(FutureOr<void> Function() listener);

  void removeListener(FutureOr<void> Function() listener);

  int getListenerCount();
}
