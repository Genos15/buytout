import 'package:buytout/shared/index.dart';

part 'product-ui.vm.state.freezed.dart';

part 'product-ui.vm.state.g.dart';

@freezed
@immutable
class ProductUiState with _$ProductUiState {
  const ProductUiState._();

  const factory ProductUiState({
    required ProdLite input,
    required ProdDetails product,
  }) = _ProductUiState;

  factory ProductUiState.fromJson(Map<String, dynamic> json) =>
      _$ProductUiStateFromJson(json);
}

typedef ProductUiVmState = AsyncValue<ProductUiState>;
