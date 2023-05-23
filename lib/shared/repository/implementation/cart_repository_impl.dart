import 'package:buytout/shared/index.dart';

// final productRepositoryProvider =
//     Provider<ProductRepository>((ref) => ProductRepositoryImpl());

class CartRepositoryImpl implements CartRepository {
  final LazyBox<Cart> box;
  final String boxKey;

  CartRepositoryImpl(this.box, this.boxKey) {
    Hive.registerAdapter(CartAdapter());
  }

  @override
  Future<Result<bool>> clear() async {
    try {
      final optionalCart = await find();
      final cart = switch (optionalCart) {
        (Success<Cart> s) => s.data,
        _ => throw Exception('Impossible to delete the cart instance'),
      };
      await cart.delete();
      return Success(true);
    } on Exception catch (exception, stackTrace) {
      return Failure(exception, stackTrace);
    }
  }

  @override
  Future<Result<Cart>> find() async {
    try {
      final cart = await box.get(boxKey);
      return switch (cart?.isInBox) {
        true when cart != null => Success(cart),
        _ => throw Exception('Impossible to find the cart instance')
      };
    } on Exception catch (exception, stackTrace) {
      return Failure(exception, stackTrace);
    }
  }

  @override
  Future<Result<Cart>> save({required Cart cart}) async {
    return Idle();
  }
}
