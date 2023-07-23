import 'package:buytout/shared/index.dart';

part 'product-cart.viewmodel.state.freezed.dart';

@freezed
@immutable
class ProductCartViewModelState with _$ProductCartViewModelState {
  const ProductCartViewModelState._();

  const factory ProductCartViewModelState({
    required int quantity,
    required Product product,
  }) = _ProductCartViewModelState;
}
