import 'package:buytout/shared/index.dart';

final cartViewModelProvider =
    StateNotifierProvider.autoDispose<CartViewModel, Result<Cart>>((ref) {
  final service = ref.watch(cartServiceProvider);
  return CartViewModel(service);
});

class CartViewModel extends StateNotifier<Result<Cart>> {
  final CartService service;

  CartViewModel(this.service) : super(const Result.idle()) {
    refreshCart();

    service.addListener(onAddCart);
  }

  void onAddCart() async {
    state = await service.find();
  }

  void refreshCart() async {
    if (!mounted) {
      logger.d('Cart view is not mounted');
      return;
    }

    state = const Result.loading();
    final cartResult = await service.find();
    cartResult.when(
      (value) => state = Result(value),
      idle: () {
        logger.d('no cart fetched idle');
      },
      loading: () {
        logger.d('loading cart…');
      },
      error: (e, s) {
        logger.e('Error cart', e, s);
      },
    );
  }

  int _deliveryPrice() {
    return 350;
  }

  String displayDeliveryPriceAsString() {
    final priceBuffer = [_deliveryPrice(), 'FCFA'];
    return priceBuffer.join(' ');
  }

  @override
  void dispose() {
    service.removeListener(onAddCart);
    super.dispose();
  }
}
