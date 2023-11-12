// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      categoryId: json['categoryId'] as String,
      parentCategoryId: json['parentCategoryId'] as String? ?? null,
      categoryNameEn: json['categoryNameEn'] as String,
      imageUrl: json['imageUrl'] as String? ?? '',
      html: json['html'] as String? ?? null,
      fullWidth: json['fullWidth'] as bool? ?? false,
      bgColor: json['bgColor'] as String? ?? '#FFFFFF',
      categoryNameOtherLanguages:
          json['categoryNameOtherLanguages'] as Map<String, dynamic>? ??
              const {},
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'parentCategoryId': instance.parentCategoryId,
      'categoryNameEn': instance.categoryNameEn,
      'imageUrl': instance.imageUrl,
      'html': instance.html,
      'fullWidth': instance.fullWidth,
      'bgColor': instance.bgColor,
      'categoryNameOtherLanguages': instance.categoryNameOtherLanguages,
    };
