import 'package:buytout/shared/index.dart';

part 'category-ui.vm.state.freezed.dart';

part 'category-ui.vm.state.g.dart';

@freezed
@immutable
class CategoryUiState with _$CategoryUiState {
  const CategoryUiState._();

  const factory CategoryUiState({
    required String categoryId,
    required int totalProductCount,
    required List<Product> products,
  }) = _CategoryUiState;

  factory CategoryUiState.fromJson(Map<String, dynamic> json) =>
      _$CategoryUiStateFromJson(json);
}

typedef CategoryUiVmState = AsyncValue<CategoryUiState>;
