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
  ) : super(
          AsyncValue.data(
            ProductCartUiState(
              quantity: 1,
              product: product,
            ),
          ),
        );

  final int inStock;
  final ProdDetails product;
  final CartService cartService;

  int increment() {
    return state.maybeMap(
      data: (productCartUiState) {
        final oldQuantity = productCartUiState.value.quantity;
        final newQuantity = min(inStock, oldQuantity + 1);
        final newState = ProductCartUiState(
          quantity: newQuantity,
          product: product,
        );
        state = AsyncValue.data(newState);
        return newQuantity;
      },
      orElse: () => 0,
    );
  }

  int decrement() {
    return state.maybeMap(
      data: (productCartUiState) {
        final oldQuantity = productCartUiState.value.quantity;
        final newQuantity = max(oldQuantity - 1, 0);
        final newState = ProductCartUiState(
          quantity: newQuantity,
          product: product,
        );
        state = AsyncValue.data(newState);
        return newQuantity;
      },
      orElse: () => 0,
    );
  }

  Future<void> add(Product product) async {
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
