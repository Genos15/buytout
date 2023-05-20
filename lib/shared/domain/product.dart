import 'package:buytout/shared/domain/product_category_preview.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

part 'product.g.dart';

@freezed
@immutable
class Product with _$Product {
  const Product._();

  const factory Product({
    required String id,
    required String name,
    required ProductCategoryPreview categoryPreview,
    required int displayPrice,
    required int price,
    required String image1,
    required String image2,
    required String image3,
    required String image4,
    required String image5,
    required String description,
    @Default(0) int percentage,
    @Default(false) bool isFavorite,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);
}
