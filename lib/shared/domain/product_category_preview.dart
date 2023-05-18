import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category_preview.freezed.dart';

part 'product_category_preview.g.dart';

@freezed
@immutable
class ProductCategoryPreview with _$ProductCategoryPreview {
  const ProductCategoryPreview._();

  const factory ProductCategoryPreview({
    required String id,
    required String name,
  }) = _ProductCategoryPreview;

  factory ProductCategoryPreview.fromJson(Map<String, Object?> json) =>
      _$ProductCategoryPreviewFromJson(json);
}
