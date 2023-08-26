import 'package:buytout/shared/index.dart';

final categoryUiVmProvider = StateNotifierProvider.autoDispose
    .family<CategoryUiVm, CategoryUiVmState, Category>((ref, category) {
  final productService = ref.watch(productServiceProvider);
  return CategoryUiVm(productService, category);
});

/// the expression "Vm" means viewmodel
class CategoryUiVm extends StateNotifier<CategoryUiVmState> {
  CategoryUiVm(this._productService, this._productCategory)
      : super(const AsyncValue.loading()) {
    _load();
  }

  final ProductService _productService;
  final Category _productCategory;

  void _load([int first = 50]) async {
    await Future.delayed(5.seconds);

    const categoryUiState = CategoryUiState(
      categoryId: '',
      totalProductCount: 0,
      products: <Product>[],
    );

    state = const AsyncData(categoryUiState);
    // state = AsyncError(Error(), StackTrace.current);
  }

  void _loadMore(String after, [int first = 50]) {}
}
