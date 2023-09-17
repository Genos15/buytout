import 'package:buytout/shared/index.dart';

final cartUiVmProvider =
    StateNotifierProvider.autoDispose<CartUiVm, CartUiVmState>((ref) {
  final service = ref.watch(cartServiceProvider);
  return CartUiVm(service);
});

const _kDefaultState = CartUiState(
  cart: OrderStatement(
    products: [],
    deliveryAmount: 0,
    productTotalAmount: 0,
    totalAmount: 0,
    currency: 'XAF',
  ),
);

class CartUiVm extends StateNotifier<CartUiVmState> {
  final CartService service;

  CartUiVm(this.service) : super(const AsyncValue.data(_kDefaultState)) {
    service.addListener(onAddCart);
    fetchCurrentCart();
  }

  void onAddCart() async {
    fetchCurrentCart();
  }

  void fetchCurrentCart() async {
    try {
      if (!mounted) {
        logger.d('cart view is not mounted');
        return;
      }

      state = const AsyncValue.loading();
      final orderStatement = await service.getCart();
      state = AsyncValue.data(CartUiState(cart: orderStatement));
    } on Object catch (error, stacktrace) {
      Exceptions.monitor(error, stacktrace);
      state = AsyncValue.error(error, stacktrace);
    }
  }

  // String displayDeliveryPriceAsString() {
  //   final priceBuffer = [_deliveryPrice(), 'FCFA'];
  //   return priceBuffer.join(' ');
  // }

  @override
  void dispose() {
    service.removeListener(onAddCart);
    super.dispose();
  }
}
