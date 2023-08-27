import 'package:buytout/shared/index.dart';

const kFetchInterval = 20;

final categoryUiVmProvider = StateNotifierProvider.autoDispose
    .family<CategoryUiVm, CategoryUiVmState, Category>((ref, category) {
  final productService = ref.watch(productServiceProvider);
  return CategoryUiVm(productService, category);
});

class CategoryUiVm extends StateNotifier<CategoryUiVmState> {
  CategoryUiVm(this._productService, this._productCategory)
      : super(const AsyncValue.loading()) {
    _load();
  }

  final ProductService _productService;
  final Category _productCategory;

  void _load([int first = kFetchInterval]) async {
    try {
      final totalProductFound = await _productService.getTotalProductCount(
        productCategoryId: _productCategory.categoryId,
      );

      final products = await _productService.getProductByCategoryId(
        productCategoryId: _productCategory.categoryId,
        first: first,
      );

      var categoryUiState = CategoryUiState(
        categoryId: _productCategory.categoryId,
        totalProductCount: totalProductFound,
        products: products.toList(),
      );

      state = AsyncValue.data(categoryUiState);
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
// void _loadMore(String after, [int first = kFetchInterval]) {}
}
