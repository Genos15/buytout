import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeViewModelState>(
  (ref) => HomeViewModel(ref.watch(productServiceProvider)),
);

final homeViewModelNewProductsProvider =
    Provider.autoDispose<(bool, Iterable<Product>)>((ref) {
  final productsProvider = ref.watch(homeViewModelProvider);
  final products = productsProvider.newProducts;
  return products.when(
    (value) => (false, value),
    idle: () => (true, []),
    loading: () => (true, []),
    error: (exception, stacktrace) => (false, []),
  );
});

final homeViewModelProductsProvider =
    Provider.autoDispose<(bool, Iterable<Product>)>((ref) {
  final products = ref.watch(homeViewModelProvider).products;
  return products.when(
    (value) => (false, value),
    idle: () => (true, []),
    loading: () => (true, []),
    error: (exception, stacktrace) => (false, []),
  );
});

class HomeViewModel extends StateNotifier<HomeViewModelState> {
  HomeViewModel(this._productService)
      : super(const HomeViewModelState(
          newProducts: Idle(),
          products: Idle(),
        )) {
    getNews();
    getAll();
  }

  final ProductService _productService;

  void getNews() async {
    state = state.copyWith(newProducts: const Result.loading());
    final products = await _productService.findNew(first: 20);
    products.when(
      (list) {
        state = state.copyWith(newProducts: Result(list));
      },
      idle: () => {},
      loading: () => state = state.copyWith(
        newProducts: const Result.loading(),
      ),
      error: (exception, stacktrace) => logger.e(
        'Error',
        exception,
        stacktrace,
      ),
    );
  }

  void getAll() async {
    state = state.copyWith(products: const Result.loading());
    final products = await _productService.findAll(first: 100);
    products.when(
      (list) {
        state = state.copyWith(products: Result(list));
      },
      idle: () => {},
      loading: () => state = state.copyWith(products: const Result.loading()),
      error: (exception, stacktrace) => logger.e(
        'Error',
        exception,
        stacktrace,
      ),
    );
  }
}
