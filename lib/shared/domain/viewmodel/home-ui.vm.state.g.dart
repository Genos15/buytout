// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeUiStateImpl _$$HomeUiStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeUiStateImpl(
      specialCategories: (json['specialCategories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeUiStateImplToJson(_$HomeUiStateImpl instance) =>
    <String, dynamic>{
      'specialCategories': instance.specialCategories,
      'categories': instance.categories,
    };
