import 'package:buytout/shared/index.dart';

final cartUiVmProvider =
    StateNotifierProvider.autoDispose<CartUiVm, CartUiVmState>((ref) {
  final service = ref.watch(cartServiceProvider);
  return CartUiVm(service);
});

const _kDefaultState = CartUiState(
  cart: OrderStatement(
    products: [],
    deliveryFee: 0,
    serviceFee: 0,
    productTotalAmount: 0,
    totalAmount: 0,
    currencyDetail: CurrencyDetail(
      currencyCode: '',
      currencySymbol: '',
    ),
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
      // this.updateShouldNotify(old, current)
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
