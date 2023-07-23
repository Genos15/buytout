import 'package:buytout/config/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_preview.freezed.dart';

part 'product_preview.g.dart';

@freezed
@immutable
class ProductPreview with _$ProductPreview {
  const ProductPreview._();

  const factory ProductPreview({
    required String id,
    required String name,
    required int displayPrice,
    required String displayPriceAsString,
    required int price,
    required String priceAsString,
    required String currency,
    required String image1,
    @Default(0) int percentage,
    @Default(false) bool isFavorite,
    @Default(mockedInStock) int inStock,
  }) = _ProductPreview;

  factory ProductPreview.fromJson(Map<String, Object?> json) =>
      _$ProductPreviewFromJson(json);
}
