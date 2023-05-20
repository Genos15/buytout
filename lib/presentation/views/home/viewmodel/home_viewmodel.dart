import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeViewModelState>(
  (ref) => HomeViewModel(ref.read(productServiceProvider)),
);

final homeViewModelArrivalProductsProvider =
    Provider.autoDispose<(bool, Iterable<ProductPreview>)>((ref) {
  final productsProvider = ref.watch(homeViewModelProvider);
  final result = productsProvider.newArrivalProductPreviews;
  return switch (result) {
    (Loading _) => (true, const Iterable.empty()),
    Success(data: var products) => (false, products),
    _ => (false, const Iterable.empty()),
  };
});

final homeViewModelProductsProvider =
    Provider.autoDispose<(bool, Iterable<ProductPreview>)>((ref) {
  final productsProvider = ref.watch(homeViewModelProvider);
  final result = productsProvider.productPreviews;
  return switch (result) {
    (Loading _) => (true, const Iterable.empty()),
    Success(data: var products) => (false, products),
    _ => (false, const Iterable.empty()),
  };
});

class HomeViewModel extends StateNotifier<HomeViewModelState> {
  HomeViewModel(this._productService) : super(HomeViewModelState.initialize()) {
    getNewArrivalProductPreviews().ignore();
    getProductPreviews().ignore();
  }

  final ProductService _productService;

  Future<void> getNewArrivalProductPreviews() async {
    state = state.secondCopyWith(newArrivalProductPreviews: Loading());
    final productPreviews =
        await _productService.fetchNewArrivalProductPreviews(first: 20);

    if (productPreviews is Success) {
      final result = productPreviews as Success<Iterable<ProductPreview>>;
      state = state.copyWith(newArrivalProductPreviews: result);
    } else if (productPreviews is Loading) {
      /***
       * TODO some loading action*/
    } else if (productPreviews is Failure) {
      /***
       * TODO some failure action*/
    }
  }

  Future<void> getProductPreviews() async {
    state = state.copyWith(productPreviews: Loading());
    final productPreviews =
        await _productService.fetchProductPreviews(first: 100);

    if (productPreviews is Success) {
      final result = productPreviews as Success<Iterable<ProductPreview>>;
      state = state.copyWith(productPreviews: result);
    } else if (productPreviews is Loading) {
      /***
       * TODO some loading action*/
    } else if (productPreviews is Failure) {
      /***
       * TODO some failure action*/
    }
  }
}
