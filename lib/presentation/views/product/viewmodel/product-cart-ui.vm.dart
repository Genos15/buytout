import 'dart:math';
import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final productCartVmProvider = StateNotifierProvider.autoDispose
    .family<ProductCartUiVm, ProductCartUiVmState, ProdDetails>((ref, product) {
  final service = ref.watch(cartServiceProvider);
  final tokenManager = ref.read(tokenManagerProvider);
  return ProductCartUiVm(
    product.stockQuantity,
    product,
    service,
    tokenManager,
  );
});

class ProductCartUiVm extends StateNotifier<ProductCartUiVmState> {
  ProductCartUiVm(
    this.inStock,
    this.product,
    this.cartService,
    this.tokenManager,
  ) : super(ProductCartUiState(quantity: 1, product: product));

  final int inStock;
  final ProdDetails product;
  final CartService cartService;
  final TokenManager tokenManager;

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
    required int quantity,
    required Future<bool> Function() onAuthenticateUser,
    required void Function(Object, StackTrace) onError,
    required void Function() onSuccess,
  }) async {
    try {
      if (!mounted) {
        throw 'impossible to perform this action';
      }
      // we need to add the guard to the function
      // so that we continue only if the customer is logged
      bool isUserLogged = await tokenManager.isUserLogged();
      if (!isUserLogged) {
        isUserLogged = await onAuthenticateUser();
        if (!isUserLogged) {
          throw 'you need to be logged in order to add the basket';
        }
      }

      await cartService.addToCart(
        productId: product.productId,
        quantity: quantity,
      );
      onSuccess();
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
