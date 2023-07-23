import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';

final productViewModelProvider = StateNotifierProvider.autoDispose
    .family<ProductViewModel, ProductViewModelState, Product>(
  (ref, product) {
    final productService = ref.watch(productServiceProvider);
    return ProductViewModel(productService, product);
  },
);

class ProductViewModel extends StateNotifier<ProductViewModelState> {
  ProductViewModel(this.productService, this.product)
      : super(const ProductViewModelState(product: Idle())) {
    findProduct(product);
  }

  final ProductService productService;
  final Product product;

  void findProduct(Product product) async {
    if (!mounted) return;
    state = state.copyWith(product: const Result.loading());
    final result = await productService.fetchProductById(productId: product.id);
    if (!mounted) return;
    result.when(
      (product) {
        state = state.copyWith(product: Result(product));
      },
      idle: () {
        logger.d('empty product');
      },
      loading: () {
        logger.d('loading product…');
      },
      error: (e, s) {
        logger.e('Error', e, s);
      },
    );
  }
}
