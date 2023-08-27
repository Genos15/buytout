import 'package:buytout/shared/index.dart';

final productUiVmProvider = StateNotifierProvider.autoDispose
    .family<ProductUiVm, ProductUiVmState, ProdLite>(
  (ref, product) {
    final productService = ref.watch(productServiceProvider);
    return ProductUiVm(productService, product);
  },
);

class ProductUiVm extends StateNotifier<ProductUiVmState> {
  ProductUiVm(this.productService, this.product)
      : super(const AsyncValue.loading()) {
    _load();
  }

  final ProductService productService;
  final ProdLite product;

  void _load() async {
    try {
      final productDetails = await productService.getProductById(
        productId: product.productId,
      );

      final newState = ProductUiState(input: product, product: productDetails);
      state = AsyncValue.data(newState);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}
