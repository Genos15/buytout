// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_viewmodel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeViewModelState {
  Result<Iterable<Product>> get newProducts =>
      throw _privateConstructorUsedError;
  Result<Iterable<Product>> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeViewModelStateCopyWith<HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeViewModelStateCopyWith<$Res> {
  factory $HomeViewModelStateCopyWith(
          HomeViewModelState value, $Res Function(HomeViewModelState) then) =
      _$HomeViewModelStateCopyWithImpl<$Res, HomeViewModelState>;
  @useResult
  $Res call(
      {Result<Iterable<Product>> newProducts,
      Result<Iterable<Product>> products});

  $ResultCopyWith<Iterable<Product>, $Res> get newProducts;
  $ResultCopyWith<Iterable<Product>, $Res> get products;
}

/// @nodoc
class _$HomeViewModelStateCopyWithImpl<$Res, $Val extends HomeViewModelState>
    implements $HomeViewModelStateCopyWith<$Res> {
  _$HomeViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProducts = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      newProducts: null == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as Result<Iterable<Product>>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Result<Iterable<Product>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<Iterable<Product>, $Res> get newProducts {
    return $ResultCopyWith<Iterable<Product>, $Res>(_value.newProducts,
        (value) {
      return _then(_value.copyWith(newProducts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<Iterable<Product>, $Res> get products {
    return $ResultCopyWith<Iterable<Product>, $Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeViewModelStateCopyWith<$Res>
    implements $HomeViewModelStateCopyWith<$Res> {
  factory _$$_HomeViewModelStateCopyWith(_$_HomeViewModelState value,
          $Res Function(_$_HomeViewModelState) then) =
      __$$_HomeViewModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Result<Iterable<Product>> newProducts,
      Result<Iterable<Product>> products});

  @override
  $ResultCopyWith<Iterable<Product>, $Res> get newProducts;
  @override
  $ResultCopyWith<Iterable<Product>, $Res> get products;
}

/// @nodoc
class __$$_HomeViewModelStateCopyWithImpl<$Res>
    extends _$HomeViewModelStateCopyWithImpl<$Res, _$_HomeViewModelState>
    implements _$$_HomeViewModelStateCopyWith<$Res> {
  __$$_HomeViewModelStateCopyWithImpl(
      _$_HomeViewModelState _value, $Res Function(_$_HomeViewModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newProducts = null,
    Object? products = null,
  }) {
    return _then(_$_HomeViewModelState(
      newProducts: null == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as Result<Iterable<Product>>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Result<Iterable<Product>>,
    ));
  }
}

/// @nodoc

class _$_HomeViewModelState extends _HomeViewModelState {
  const _$_HomeViewModelState(
      {required this.newProducts, required this.products})
      : super._();

  @override
  final Result<Iterable<Product>> newProducts;
  @override
  final Result<Iterable<Product>> products;

  @override
  String toString() {
    return 'HomeViewModelState(newProducts: $newProducts, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeViewModelState &&
            (identical(other.newProducts, newProducts) ||
                other.newProducts == newProducts) &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newProducts, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeViewModelStateCopyWith<_$_HomeViewModelState> get copyWith =>
      __$$_HomeViewModelStateCopyWithImpl<_$_HomeViewModelState>(
          this, _$identity);
}

abstract class _HomeViewModelState extends HomeViewModelState {
  const factory _HomeViewModelState(
          {required final Result<Iterable<Product>> newProducts,
          required final Result<Iterable<Product>> products}) =
      _$_HomeViewModelState;
  const _HomeViewModelState._() : super._();

  @override
  Result<Iterable<Product>> get newProducts;
  @override
  Result<Iterable<Product>> get products;
  @override
  @JsonKey(ignore: true)
  _$$_HomeViewModelStateCopyWith<_$_HomeViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
