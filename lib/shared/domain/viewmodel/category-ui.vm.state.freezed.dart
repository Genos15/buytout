// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category-ui.vm.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryUiState _$CategoryUiStateFromJson(Map<String, dynamic> json) {
  return _CategoryUiState.fromJson(json);
}

/// @nodoc
mixin _$CategoryUiState {
  String get categoryId => throw _privateConstructorUsedError;
  int get totalProductCount => throw _privateConstructorUsedError;
  List<ProdLite> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryUiStateCopyWith<CategoryUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryUiStateCopyWith<$Res> {
  factory $CategoryUiStateCopyWith(
          CategoryUiState value, $Res Function(CategoryUiState) then) =
      _$CategoryUiStateCopyWithImpl<$Res, CategoryUiState>;
  @useResult
  $Res call(
      {String categoryId, int totalProductCount, List<ProdLite> products});
}

/// @nodoc
class _$CategoryUiStateCopyWithImpl<$Res, $Val extends CategoryUiState>
    implements $CategoryUiStateCopyWith<$Res> {
  _$CategoryUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? totalProductCount = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      totalProductCount: null == totalProductCount
          ? _value.totalProductCount
          : totalProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProdLite>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryUiStateCopyWith<$Res>
    implements $CategoryUiStateCopyWith<$Res> {
  factory _$$_CategoryUiStateCopyWith(
          _$_CategoryUiState value, $Res Function(_$_CategoryUiState) then) =
      __$$_CategoryUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryId, int totalProductCount, List<ProdLite> products});
}

/// @nodoc
class __$$_CategoryUiStateCopyWithImpl<$Res>
    extends _$CategoryUiStateCopyWithImpl<$Res, _$_CategoryUiState>
    implements _$$_CategoryUiStateCopyWith<$Res> {
  __$$_CategoryUiStateCopyWithImpl(
      _$_CategoryUiState _value, $Res Function(_$_CategoryUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? totalProductCount = null,
    Object? products = null,
  }) {
    return _then(_$_CategoryUiState(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      totalProductCount: null == totalProductCount
          ? _value.totalProductCount
          : totalProductCount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProdLite>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryUiState extends _CategoryUiState {
  const _$_CategoryUiState(
      {required this.categoryId,
      required this.totalProductCount,
      required final List<ProdLite> products})
      : _products = products,
        super._();

  factory _$_CategoryUiState.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryUiStateFromJson(json);

  @override
  final String categoryId;
  @override
  final int totalProductCount;
  final List<ProdLite> _products;
  @override
  List<ProdLite> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CategoryUiState(categoryId: $categoryId, totalProductCount: $totalProductCount, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryUiState &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.totalProductCount, totalProductCount) ||
                other.totalProductCount == totalProductCount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, totalProductCount,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryUiStateCopyWith<_$_CategoryUiState> get copyWith =>
      __$$_CategoryUiStateCopyWithImpl<_$_CategoryUiState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryUiStateToJson(
      this,
    );
  }
}

abstract class _CategoryUiState extends CategoryUiState {
  const factory _CategoryUiState(
      {required final String categoryId,
      required final int totalProductCount,
      required final List<ProdLite> products}) = _$_CategoryUiState;
  const _CategoryUiState._() : super._();

  factory _CategoryUiState.fromJson(Map<String, dynamic> json) =
      _$_CategoryUiState.fromJson;

  @override
  String get categoryId;
  @override
  int get totalProductCount;
  @override
  List<ProdLite> get products;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryUiStateCopyWith<_$_CategoryUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
