// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_viewmodel_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductViewModelState {
  Result<Product> get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductViewModelStateCopyWith<ProductViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductViewModelStateCopyWith<$Res> {
  factory $ProductViewModelStateCopyWith(ProductViewModelState value,
          $Res Function(ProductViewModelState) then) =
      _$ProductViewModelStateCopyWithImpl<$Res, ProductViewModelState>;
  @useResult
  $Res call({Result<Product> product});

  $ResultCopyWith<Product, $Res> get product;
}

/// @nodoc
class _$ProductViewModelStateCopyWithImpl<$Res,
        $Val extends ProductViewModelState>
    implements $ProductViewModelStateCopyWith<$Res> {
  _$ProductViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Result<Product>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<Product, $Res> get product {
    return $ResultCopyWith<Product, $Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductViewModelStateCopyWith<$Res>
    implements $ProductViewModelStateCopyWith<$Res> {
  factory _$$_ProductViewModelStateCopyWith(_$_ProductViewModelState value,
          $Res Function(_$_ProductViewModelState) then) =
      __$$_ProductViewModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result<Product> product});

  @override
  $ResultCopyWith<Product, $Res> get product;
}

/// @nodoc
class __$$_ProductViewModelStateCopyWithImpl<$Res>
    extends _$ProductViewModelStateCopyWithImpl<$Res, _$_ProductViewModelState>
    implements _$$_ProductViewModelStateCopyWith<$Res> {
  __$$_ProductViewModelStateCopyWithImpl(_$_ProductViewModelState _value,
      $Res Function(_$_ProductViewModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$_ProductViewModelState(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Result<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductViewModelState extends _ProductViewModelState {
  const _$_ProductViewModelState({required this.product}) : super._();

  @override
  final Result<Product> product;

  @override
  String toString() {
    return 'ProductViewModelState(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductViewModelState &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductViewModelStateCopyWith<_$_ProductViewModelState> get copyWith =>
      __$$_ProductViewModelStateCopyWithImpl<_$_ProductViewModelState>(
          this, _$identity);
}

abstract class _ProductViewModelState extends ProductViewModelState {
  const factory _ProductViewModelState(
      {required final Result<Product> product}) = _$_ProductViewModelState;
  const _ProductViewModelState._() : super._();

  @override
  Result<Product> get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductViewModelStateCopyWith<_$_ProductViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
