// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCategoryPreview _$ProductCategoryPreviewFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryPreview.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryPreview {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryPreviewCopyWith<ProductCategoryPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryPreviewCopyWith<$Res> {
  factory $ProductCategoryPreviewCopyWith(ProductCategoryPreview value,
          $Res Function(ProductCategoryPreview) then) =
      _$ProductCategoryPreviewCopyWithImpl<$Res, ProductCategoryPreview>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$ProductCategoryPreviewCopyWithImpl<$Res,
        $Val extends ProductCategoryPreview>
    implements $ProductCategoryPreviewCopyWith<$Res> {
  _$ProductCategoryPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCategoryPreviewCopyWith<$Res>
    implements $ProductCategoryPreviewCopyWith<$Res> {
  factory _$$_ProductCategoryPreviewCopyWith(_$_ProductCategoryPreview value,
          $Res Function(_$_ProductCategoryPreview) then) =
      __$$_ProductCategoryPreviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_ProductCategoryPreviewCopyWithImpl<$Res>
    extends _$ProductCategoryPreviewCopyWithImpl<$Res,
        _$_ProductCategoryPreview>
    implements _$$_ProductCategoryPreviewCopyWith<$Res> {
  __$$_ProductCategoryPreviewCopyWithImpl(_$_ProductCategoryPreview _value,
      $Res Function(_$_ProductCategoryPreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_ProductCategoryPreview(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCategoryPreview extends _ProductCategoryPreview {
  const _$_ProductCategoryPreview({required this.id, required this.name})
      : super._();

  factory _$_ProductCategoryPreview.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCategoryPreviewFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductCategoryPreview(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCategoryPreview &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCategoryPreviewCopyWith<_$_ProductCategoryPreview> get copyWith =>
      __$$_ProductCategoryPreviewCopyWithImpl<_$_ProductCategoryPreview>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCategoryPreviewToJson(
      this,
    );
  }
}

abstract class _ProductCategoryPreview extends ProductCategoryPreview {
  const factory _ProductCategoryPreview(
      {required final String id,
      required final String name}) = _$_ProductCategoryPreview;
  const _ProductCategoryPreview._() : super._();

  factory _ProductCategoryPreview.fromJson(Map<String, dynamic> json) =
      _$_ProductCategoryPreview.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCategoryPreviewCopyWith<_$_ProductCategoryPreview> get copyWith =>
      throw _privateConstructorUsedError;
}
