import 'package:buytout/shared/domain/product-cart.item.d.dart';
import 'package:buytout/shared/index.dart';

final cartServiceProvider =
    Provider.autoDispose<CartService>((ref) => CartServiceImpl(
          cartRepository: ref.watch(cartRepositoryProvider),
          productRepository: ref.watch(productRepositoryProvider),
        ));

class CartServiceImpl implements CartService {
  final CartRepository cartRepository;
  final ProductRepository productRepository;

  CartServiceImpl({
    required this.cartRepository,
    required this.productRepository,
  });

  final List<void Function()> listeners = [];

  @override
  Future<Result<bool>> clear() async {
    try {
      final deleted = await cartRepository.clear();
      return Result(deleted);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Result<Cart>> find() async {
    try {
      final cartProducts = await cartRepository.findAll();
      if (cartProducts.isEmpty) {
        throw CartNotFoundException();
      }

      final products = <String, (int, Product)>{};
      for (var item in cartProducts) {
        final product = await productRepository.find(productId: item.productId);
        if (products.containsKey(product.id)) {
          products.update(product.id, (context) {
            return (context.$1 + item.quantity, product);
          });
        } else {
          products.putIfAbsent(product.id, () => (item.quantity, product));
        }
      }
      final cart = Cart(id: const Uuid().v4(), products: products);
      return Result(cart);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Result<Cart>> update({required Cart cart}) async {
    try {
      final updatedCart = await cartRepository.update(cart: cart);
      return Result(updatedCart);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Result<int>> addToCart({
    required Product product,
    required int quantity,
  }) async {
    try {
      final item = ProductCartItem(
        id: const Uuid().v4(),
        productId: product.id,
        quantity: quantity,
      );

      final count = await cartRepository.insert(productCartItem: item);

      // notify all listeners
      for (var listener in listeners) {
        listener.call();
      }

      return Result(count);
    } on Exception catch (exception, stacktrace) {
      logger.e('error', exception, stacktrace);
      return Result.error(exception, stacktrace);
    }
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
}
