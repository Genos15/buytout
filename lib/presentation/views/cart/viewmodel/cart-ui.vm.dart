import 'dart:async';

import 'package:buytout/shared/index.dart';

final cartUiVmProvider =
    StateNotifierProvider.autoDispose<CartUiVm, CartUiVmState>((ref) {
  final service = ref.watch(cartServiceProvider);
  return CartUiVm(service);
});

class CartUiVm extends StateNotifier<CartUiVmState> {
  final CartService service;

  CartUiVm(this.service) : super(const AsyncValue.data(defaultCartUiState)) {
    service.addListener(onAddCart);
    unawaited(fetchCurrentCart());
  }

  FutureOr<void> onAddCart() async {
    await fetchCurrentCart();
    logger.d('cart updated');
  }

  Future<void> fetchCurrentCart() async {
    try {
      if (!mounted) {
        logger.d('cart view is not mounted');
        return;
      }

      state = const AsyncValue.loading();
      final orderStatement = await service.getCart();

      if (orderStatement.products.isEmpty) {
        throw Exception('the cart has no products');
      }

      state = AsyncValue.data(CartUiState(cart: orderStatement));
    } on Object catch (error, stacktrace) {
      Exceptions.monitor(error, stacktrace);
      state = AsyncValue.error(error, stacktrace);
    }
  }

  @override
  void dispose() {
    service.removeListener(onAddCart);
    super.dispose();
  }

  CurrencyDetail get currencyDetail {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    final cart = state.requireValue.cart;
    return cart.currencyDetail;
  }

  String get deliveryFee {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    final cart = state.requireValue.cart;
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(cart.deliveryFee, currencyCode);
  }

  String get serviceFee {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    final cart = state.requireValue.cart;
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(cart.serviceFee, currencyCode);
  }

  String get productTotalAmount {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    final cart = state.requireValue.cart;
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(cart.productTotalAmount, currencyCode);
  }

  String get totalAmount {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    final cart = state.requireValue.cart;
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(cart.totalAmount, currencyCode);
  }

  List<ShoppingCartItem> get items {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    final cart = state.requireValue.cart;

    return cart.products;
  }
}
