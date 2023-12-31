import 'package:buytout/shared/index.dart';

part 'cart-ui.vm.state.freezed.dart';

part 'cart-ui.vm.state.g.dart';

@freezed
@immutable
class CartUiState with _$CartUiState {
  const CartUiState._();

  const factory CartUiState({
    required OrderStatement cart,
  }) = _CartUiState;

  factory CartUiState.fromJson(Map<String, dynamic> json) =>
      _$CartUiStateFromJson(json);
}

typedef CartUiVmState = AsyncValue<CartUiState>;
