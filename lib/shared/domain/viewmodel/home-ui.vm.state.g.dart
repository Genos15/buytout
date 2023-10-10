// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeUiState _$$_HomeUiStateFromJson(Map<String, dynamic> json) =>
    _$_HomeUiState(
      primary: Category.fromJson(json['primary'] as Map<String, dynamic>),
      secondary: Category.fromJson(json['secondary'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HomeUiStateToJson(_$_HomeUiState instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'secondary': instance.secondary,
      'categories': instance.categories,
    };
