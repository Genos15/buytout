import 'package:buytout/shared/index.dart';

part 'product_viewmodel_state.freezed.dart';

@freezed
@immutable
class ProductViewModelState with _$ProductViewModelState {
  const ProductViewModelState._();

  const factory ProductViewModelState({
    required Result<Product> product,
  }) = _ProductViewModelState;
}
