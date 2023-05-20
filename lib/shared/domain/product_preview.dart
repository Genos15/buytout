import 'package:buytout/shared/domain/product_category_preview.dart';
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
    required ProductCategoryPreview categoryPreview,
    required int displayPrice,
    required int price,
    required String currency,
    required String imageUrl,
    @Default(0) int percentage,
    @Default(false) bool isFavorite,
  }) = _ProductPreview;

  factory ProductPreview.fromJson(Map<String, Object?> json) =>
      _$ProductPreviewFromJson(json);
}
