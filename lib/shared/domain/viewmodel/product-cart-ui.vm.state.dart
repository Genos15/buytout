import 'package:buytout/shared/index.dart';

part 'product-cart-ui.vm.state.freezed.dart';

part 'product-cart-ui.vm.state.g.dart';

@freezed
@immutable
class ProductCartUiState with _$ProductCartUiState {
  const ProductCartUiState._();

  const factory ProductCartUiState({
    required int quantity,
    required ProdDetails product,
  }) = _ProductCartUiState;

  factory ProductCartUiState.fromJson(Map<String, dynamic> json) =>
      _$ProductCartUiStateFromJson(json);
}

typedef ProductCartUiVmState = ProductCartUiState;
