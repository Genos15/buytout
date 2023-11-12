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
    @Default('') String imageUrl,
    @Default(null) String? html,
    @Default(false) bool fullWidth,
    @Default('#FFFFFF') String bgColor,
    @Default({}) Map<String, dynamic> categoryNameOtherLanguages,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
