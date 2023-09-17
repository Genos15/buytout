
import 'package:buytout/shared/index.dart';

abstract interface class CartService {

  Future<bool> addToCart({
    required String productId,
    required int quantity,
  });

  Future<OrderStatement> getCart();

  void addListener(void Function() listener);

  void removeListener(void Function() listener);

  int getListenerCount();
}
