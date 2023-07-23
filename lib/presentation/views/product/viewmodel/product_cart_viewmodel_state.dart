import 'package:buytout/shared/index.dart';

part 'product_cart_viewmodel_state.freezed.dart';

@freezed
@immutable
class ProductCartViewModelState with _$ProductCartViewModelState {
  const ProductCartViewModelState._();

  const factory ProductCartViewModelState({
    required int quantity,
    required Product product,
  }) = _ProductCartViewModelState;
}
