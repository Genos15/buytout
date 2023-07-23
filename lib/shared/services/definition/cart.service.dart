import 'package:buytout/shared/index.dart';

abstract interface class CartService {
  Future<Result<Cart>> find();

  Future<Result<Cart>> update({required Cart cart});

  Future<Result<bool>> clear();

  Future<Result<int>> addToCart({
    required Product product,
    required int quantity,
  });

  void addListener(void Function() listener);

  void removeListener(void Function() listener);

  int getListenerCount();
}
