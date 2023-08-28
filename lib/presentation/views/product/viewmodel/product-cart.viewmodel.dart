import 'dart:math';
import 'package:buytout/shared/index.dart';

final productCartVmProvider = StateNotifierProvider.autoDispose
    .family<ProductCartUiVm, ProductCartUiVmState, ProdDetails>((ref, product) {
  final service = ref.watch(cartServiceProvider);
  return ProductCartUiVm(product.stockQuantity, product, service);
});

class ProductCartUiVm extends StateNotifier<ProductCartUiVmState> {
  ProductCartUiVm(
    this.inStock,
    this.product,
    this.cartService,
  ) : super(ProductCartUiState(quantity: 1, product: product));

  final int inStock;
  final ProdDetails product;
  final CartService cartService;

  int increment() {
    final quantity = min(inStock, state.quantity + 1);
    state = state.copyWith(quantity: quantity);
    return quantity;
  }

  int decrement() {
    final quantity = max(state.quantity - 1, 0);
    state = state.copyWith(quantity: quantity);
    return quantity;
  }

  void addToCart({
    required ProdDetails product,
    required Future<bool?> Function() onAuthenticateUser,
    required void Function(Object, StackTrace) onError,
  }) async {
    try {
      if (!mounted) {
        throw 'impossible to perform this action';
      }
      await Future.delayed(2.seconds);
      // we need to add the guard to the function
      // so that we continue only if the customer is logged
      bool? isUserLogged = false;

      if (!isUserLogged) {
        isUserLogged = await onAuthenticateUser.call();
        if (isUserLogged == null || !isUserLogged) {
          throw 'you need to be logged in order to add the basket';
        }
      }

      return;
    } catch (error, stacktrace) {
      onError(error, stacktrace);
    }
    // await cartService.addToCart(
    //   product: product,
    //   quantity: state.quantity,
    // );
    // TODO do this call using a better way
    // viewmodel.re
    // try to use listeners
    // final viewmodel = cartViewModelProvider;
    // consider create callback method to notifier when changes in service
  }
}
