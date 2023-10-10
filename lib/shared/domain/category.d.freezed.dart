// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get categoryId => throw _privateConstructorUsedError;
  String? get parentCategoryId => throw _privateConstructorUsedError;
  String get categoryNameEn => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get categoryNameOtherLanguages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String categoryId,
      String? parentCategoryId,
      String categoryNameEn,
      String imageUrl,
      Map<String, dynamic> categoryNameOtherLanguages});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? parentCategoryId = freezed,
    Object? categoryNameEn = null,
    Object? imageUrl = null,
    Object? categoryNameOtherLanguages = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameOtherLanguages: null == categoryNameOtherLanguages
          ? _value.categoryNameOtherLanguages
          : categoryNameOtherLanguages // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryId,
      String? parentCategoryId,
      String categoryNameEn,
      String imageUrl,
      Map<String, dynamic> categoryNameOtherLanguages});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? parentCategoryId = freezed,
    Object? categoryNameEn = null,
    Object? imageUrl = null,
    Object? categoryNameOtherLanguages = null,
  }) {
    return _then(_$_Category(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameOtherLanguages: null == categoryNameOtherLanguages
          ? _value._categoryNameOtherLanguages
          : categoryNameOtherLanguages // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category extends _Category {
  const _$_Category(
      {required this.categoryId,
      this.parentCategoryId = null,
      required this.categoryNameEn,
      this.imageUrl = '',
      final Map<String, dynamic> categoryNameOtherLanguages = const {}})
      : _categoryNameOtherLanguages = categoryNameOtherLanguages,
        super._();

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final String categoryId;
  @override
  @JsonKey()
  final String? parentCategoryId;
  @override
  final String categoryNameEn;
  @override
  @JsonKey()
  final String imageUrl;
  final Map<String, dynamic> _categoryNameOtherLanguages;
  @override
  @JsonKey()
  Map<String, dynamic> get categoryNameOtherLanguages {
    if (_categoryNameOtherLanguages is EqualUnmodifiableMapView)
      return _categoryNameOtherLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryNameOtherLanguages);
  }

  @override
  String toString() {
    return 'Category(categoryId: $categoryId, parentCategoryId: $parentCategoryId, categoryNameEn: $categoryNameEn, imageUrl: $imageUrl, categoryNameOtherLanguages: $categoryNameOtherLanguages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.categoryNameEn, categoryNameEn) ||
                other.categoryNameEn == categoryNameEn) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(
                other._categoryNameOtherLanguages,
                _categoryNameOtherLanguages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      parentCategoryId,
      categoryNameEn,
      imageUrl,
      const DeepCollectionEquality().hash(_categoryNameOtherLanguages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category extends Category {
  const factory _Category(
      {required final String categoryId,
      final String? parentCategoryId,
      required final String categoryNameEn,
      final String imageUrl,
      final Map<String, dynamic> categoryNameOtherLanguages}) = _$_Category;
  const _Category._() : super._();

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get categoryId;
  @override
  String? get parentCategoryId;
  @override
  String get categoryNameEn;
  @override
  String get imageUrl;
  @override
  Map<String, dynamic> get categoryNameOtherLanguages;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
