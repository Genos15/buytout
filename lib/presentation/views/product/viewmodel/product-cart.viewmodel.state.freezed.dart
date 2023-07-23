// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product-cart.viewmodel.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCartViewModelState {
  int get quantity => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCartViewModelStateCopyWith<ProductCartViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartViewModelStateCopyWith<$Res> {
  factory $ProductCartViewModelStateCopyWith(ProductCartViewModelState value,
          $Res Function(ProductCartViewModelState) then) =
      _$ProductCartViewModelStateCopyWithImpl<$Res, ProductCartViewModelState>;
  @useResult
  $Res call({int quantity, Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductCartViewModelStateCopyWithImpl<$Res,
        $Val extends ProductCartViewModelState>
    implements $ProductCartViewModelStateCopyWith<$Res> {
  _$ProductCartViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductCartViewModelStateCopyWith<$Res>
    implements $ProductCartViewModelStateCopyWith<$Res> {
  factory _$$_ProductCartViewModelStateCopyWith(
          _$_ProductCartViewModelState value,
          $Res Function(_$_ProductCartViewModelState) then) =
      __$$_ProductCartViewModelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, Product product});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductCartViewModelStateCopyWithImpl<$Res>
    extends _$ProductCartViewModelStateCopyWithImpl<$Res,
        _$_ProductCartViewModelState>
    implements _$$_ProductCartViewModelStateCopyWith<$Res> {
  __$$_ProductCartViewModelStateCopyWithImpl(
      _$_ProductCartViewModelState _value,
      $Res Function(_$_ProductCartViewModelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
  }) {
    return _then(_$_ProductCartViewModelState(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_ProductCartViewModelState extends _ProductCartViewModelState {
  const _$_ProductCartViewModelState(
      {required this.quantity, required this.product})
      : super._();

  @override
  final int quantity;
  @override
  final Product product;

  @override
  String toString() {
    return 'ProductCartViewModelState(quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCartViewModelState &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quantity, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCartViewModelStateCopyWith<_$_ProductCartViewModelState>
      get copyWith => __$$_ProductCartViewModelStateCopyWithImpl<
          _$_ProductCartViewModelState>(this, _$identity);
}

abstract class _ProductCartViewModelState extends ProductCartViewModelState {
  const factory _ProductCartViewModelState(
      {required final int quantity,
      required final Product product}) = _$_ProductCartViewModelState;
  const _ProductCartViewModelState._() : super._();

  @override
  int get quantity;
  @override
  Product get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCartViewModelStateCopyWith<_$_ProductCartViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}
