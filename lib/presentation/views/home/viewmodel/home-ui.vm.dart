import 'dart:async';

import 'package:buytout/shared/index.dart';

typedef CategorySet = List<Category>;

final homeUiVmProvider =
    StateNotifierProvider.autoDispose<HomeUiVm, HomeUiVmState>((ref) {
  final categoryService = ref.read(categoryServiceProvider);
  return HomeUiVm(categoryService);
});

class HomeUiVm extends StateNotifier<HomeUiVmState> {
  final CategoryService categoryService;

  HomeUiVm(this.categoryService) : super(const AsyncValue.loading()) {
    unawaited(onLoad());
  }

  Future<void> onLoad() async {
    final categories = await categoryService.getAllCategories(first: 100);
    final (specialCategories, bottom) = _getOrganizedCategories(categories);
    state = AsyncValue.data(HomeUiState(
      specialCategories: specialCategories,
      categories: bottom,
    ));
  }

  (CategorySet, CategorySet) _getOrganizedCategories(
    Iterable<Category> categories,
  ) {
    final CategorySet topCategories = [];
    final CategorySet bottomCategories = [];

    for (final category in categories) {
      if (category.html == null && category.fullWidth == false) {
        bottomCategories.add(category);
      } else {
        topCategories.add(category);
      }
    }
    return (topCategories, bottomCategories);
  }
}
