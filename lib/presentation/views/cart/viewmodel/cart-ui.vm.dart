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

  OrderStatement get _orderStatement {
    assert(mounted && state.hasValue, 'Cart Ui state must have a value');
    return state.requireValue.cart;
  }

  CurrencyDetail get currencyDetail {
    return _orderStatement.currencyDetail;
  }

  String get deliveryFee {
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(
      _orderStatement.deliveryFee,
      currencyCode,
    );
  }

  String get serviceFee {
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(
      _orderStatement.serviceFee,
      currencyCode,
    );
  }

  String get productTotalAmount {
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(
      _orderStatement.productTotalAmount,
      currencyCode,
    );
  }

  String get totalAmount {
    final currencyCode = currencyDetail.currencyCode;

    return CurrencyHelper.formatByCode(
      _orderStatement.totalAmount,
      currencyCode,
    );
  }

  List<ShoppingCartItem> get items => _orderStatement.products;

  void goToOrderSummaryPage(void Function(OrderStatement) onCommit) {
    onCommit(_orderStatement);
  }
}
