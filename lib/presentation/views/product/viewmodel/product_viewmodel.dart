import 'dart:math';

import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';

final productViewModelProvider = StateNotifierProvider.autoDispose.family<
    ProductViewModel, AsyncValue<ProductViewModelState>, ProductPreview>(
  (ref, productPreview) => ProductViewModel(
    ref.read(productServiceProvider),
    productPreview,
  ),
);

class ProductViewModel
    extends StateNotifier<AsyncValue<ProductViewModelState>> {
  ProductViewModel(this._productService, this.productPreview)
      : super(AsyncValue.data(ProductViewModelState.initialize(
          preview: productPreview,
        ))) {
    findProduct(productPreview);
  }

  final ProductService _productService;
  final ProductPreview productPreview;

  void findProduct(ProductPreview productPreview) async {
    state = const AsyncValue.loading();
    try {
      final productResult =
          await _productService.fetchProductById(productId: productPreview.id);
      state = switch (productResult) {
        Success(data: var product) =>
          AsyncValue.data(ProductViewModelState(product: product)),
        Loading() => const AsyncValue.loading(),
        Failure(exception: var exception, stackTrace: var trace) =>
          AsyncValue.error(exception, trace),
        _ => state
      };
    } on Exception catch (error, stacktrace) {
      state = AsyncValue.error(error, stacktrace);
    }
  }
}

final productImageViewModelProvider =
    StateNotifierProvider.autoDispose<ProductImageViewModel, int>(
        (_) => ProductImageViewModel());

class ProductImageViewModel extends StateNotifier<int> {
  ProductImageViewModel() : super(0);

  void move(int index) {
    state = index;
  }
}

final productCartQuantityViewModelProvider = StateNotifierProvider.autoDispose
    .family<ProductCartQuantityViewModel, int, int>((_, availableQuantity) =>
        ProductCartQuantityViewModel(availableQuantity));

class ProductCartQuantityViewModel extends StateNotifier<int> {
  ProductCartQuantityViewModel(this.available) : super(0);

  final int available;

  int increment() {
    state = min(available, state + 1);
    return state;
  }

  int decrement() {
    state = max(state - 1, 0);
    return state;
  }
}
