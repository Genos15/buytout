// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      categoryId: json['categoryId'] as String,
      parentCategoryId: json['parentCategoryId'] as String? ?? null,
      categoryNameEn: json['categoryNameEn'] as String,
      imageUrl: json['imageUrl'] as String? ?? '',
      categoryNameOtherLanguages:
          json['categoryNameOtherLanguages'] as Map<String, dynamic>? ??
              const {},
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'parentCategoryId': instance.parentCategoryId,
      'categoryNameEn': instance.categoryNameEn,
      'imageUrl': instance.imageUrl,
      'categoryNameOtherLanguages': instance.categoryNameOtherLanguages,
    };
