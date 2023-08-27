// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language.map.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LanguageMap _$LanguageMapFromJson(Map<String, dynamic> json) {
  return _LanguageMap.fromJson(json);
}

/// @nodoc
mixin _$LanguageMap {
  @JsonKey(name: 'FR')
  String? get fr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageMapCopyWith<LanguageMap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageMapCopyWith<$Res> {
  factory $LanguageMapCopyWith(
          LanguageMap value, $Res Function(LanguageMap) then) =
      _$LanguageMapCopyWithImpl<$Res, LanguageMap>;
  @useResult
  $Res call({@JsonKey(name: 'FR') String? fr});
}

/// @nodoc
class _$LanguageMapCopyWithImpl<$Res, $Val extends LanguageMap>
    implements $LanguageMapCopyWith<$Res> {
  _$LanguageMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fr = freezed,
  }) {
    return _then(_value.copyWith(
      fr: freezed == fr
          ? _value.fr
          : fr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageMapCopyWith<$Res>
    implements $LanguageMapCopyWith<$Res> {
  factory _$$_LanguageMapCopyWith(
          _$_LanguageMap value, $Res Function(_$_LanguageMap) then) =
      __$$_LanguageMapCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'FR') String? fr});
}

/// @nodoc
class __$$_LanguageMapCopyWithImpl<$Res>
    extends _$LanguageMapCopyWithImpl<$Res, _$_LanguageMap>
    implements _$$_LanguageMapCopyWith<$Res> {
  __$$_LanguageMapCopyWithImpl(
      _$_LanguageMap _value, $Res Function(_$_LanguageMap) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fr = freezed,
  }) {
    return _then(_$_LanguageMap(
      fr: freezed == fr
          ? _value.fr
          : fr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LanguageMap extends _LanguageMap {
  const _$_LanguageMap({@JsonKey(name: 'FR') this.fr}) : super._();

  factory _$_LanguageMap.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageMapFromJson(json);

  @override
  @JsonKey(name: 'FR')
  final String? fr;

  @override
  String toString() {
    return 'LanguageMap(fr: $fr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageMap &&
            (identical(other.fr, fr) || other.fr == fr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageMapCopyWith<_$_LanguageMap> get copyWith =>
      __$$_LanguageMapCopyWithImpl<_$_LanguageMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageMapToJson(
      this,
    );
  }
}

abstract class _LanguageMap extends LanguageMap {
  const factory _LanguageMap({@JsonKey(name: 'FR') final String? fr}) =
      _$_LanguageMap;
  const _LanguageMap._() : super._();

  factory _LanguageMap.fromJson(Map<String, dynamic> json) =
      _$_LanguageMap.fromJson;

  @override
  @JsonKey(name: 'FR')
  String? get fr;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageMapCopyWith<_$_LanguageMap> get copyWith =>
      throw _privateConstructorUsedError;
}
