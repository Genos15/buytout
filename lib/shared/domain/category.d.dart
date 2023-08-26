import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.d.freezed.dart';

part 'category.d.g.dart';

@freezed
@immutable
class Category with _$Category {
  const Category._();

  const factory Category({
    required String categoryId,
    @Default(null) String? parentCategoryId,
    required String categoryNameEn,
    @Default({}) Map<String, dynamic> categoryNameOtherLanguages,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
