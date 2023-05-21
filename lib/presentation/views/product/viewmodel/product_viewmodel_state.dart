import 'package:buytout/shared/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_viewmodel_state.freezed.dart';

@freezed
@immutable
class ProductViewModelState with _$ProductViewModelState {
  const ProductViewModelState._();

  const factory ProductViewModelState({
    required Product product,
  }) = _ProductViewModelState;

  factory ProductViewModelState.initialize({required ProductPreview preview}) {
    return ProductViewModelState(
      product: Product(
          id: preview.id,
          name: preview.name,
          categoryPreview: preview.categoryPreview,
          displayPrice: preview.displayPrice,
          displayPriceAsString: preview.displayPriceAsString,
          priceAsString: preview.priceAsString,
          price: preview.price,
          currency: preview.currency,
          image1: preview.imageUrl,
          image2: preview.imageUrl,
          image3: preview.imageUrl,
          image4: preview.imageUrl,
          image5: preview.imageUrl,
          description: ''),
    );
  }

  ProductViewModelState secondCopyWith({Product? product}) {
    return ProductViewModelState(product: product ?? this.product);
  }
}
