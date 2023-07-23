import 'dart:math';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';

final productCartQuantityViewModelProvider = StateNotifierProvider.autoDispose
    .family<ProductCartQuantityViewModel, ProductCartViewModelState, Product>(
        (ref, product) {
  final service = ref.watch(cartServiceProvider);
  return ProductCartQuantityViewModel(10, product, service);
});

class ProductCartQuantityViewModel
    extends StateNotifier<ProductCartViewModelState> {
  ProductCartQuantityViewModel(
    this.available,
    this.product,
    this.cartService,
  ) : super(ProductCartViewModelState(quantity: 1, product: product));

  final int available;
  final Product product;
  final CartService cartService;

  int increment() {
    state = state.copyWith(quantity: min(available, state.quantity + 1));
    return state.quantity;
  }

  int decrement() {
    state = state.copyWith(quantity: max(state.quantity - 1, 0));
    return state.quantity;
  }

  Future<void> add(Product product) async {
    await cartService.addToCart(
      product: product,
      quantity: state.quantity,
    );
    // TODO do this call using a better way
    // viewmodel.re
    // try to use listeners
    // final viewmodel = cartViewModelProvider;
    // consider create callback method to notifier when changes in service
  }
}
