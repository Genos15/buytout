// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.statement.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderStatement _$OrderStatementFromJson(Map<String, dynamic> json) {
  return _OrderStatement.fromJson(json);
}

/// @nodoc
mixin _$OrderStatement {
  List<ShoppingCartItem> get products => throw _privateConstructorUsedError;
  int get deliveryFee => throw _privateConstructorUsedError;
  int get serviceFee => throw _privateConstructorUsedError;
  int get productTotalAmount => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  CurrencyDetail get currencyDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatementCopyWith<OrderStatement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatementCopyWith<$Res> {
  factory $OrderStatementCopyWith(
          OrderStatement value, $Res Function(OrderStatement) then) =
      _$OrderStatementCopyWithImpl<$Res, OrderStatement>;
  @useResult
  $Res call(
      {List<ShoppingCartItem> products,
      int deliveryFee,
      int serviceFee,
      int productTotalAmount,
      int totalAmount,
      CurrencyDetail currencyDetail});

  $CurrencyDetailCopyWith<$Res> get currencyDetail;
}

/// @nodoc
class _$OrderStatementCopyWithImpl<$Res, $Val extends OrderStatement>
    implements $OrderStatementCopyWith<$Res> {
  _$OrderStatementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveryFee = null,
    Object? serviceFee = null,
    Object? productTotalAmount = null,
    Object? totalAmount = null,
    Object? currencyDetail = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItem>,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalAmount: null == productTotalAmount
          ? _value.productTotalAmount
          : productTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyDetail: null == currencyDetail
          ? _value.currencyDetail
          : currencyDetail // ignore: cast_nullable_to_non_nullable
              as CurrencyDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyDetailCopyWith<$Res> get currencyDetail {
    return $CurrencyDetailCopyWith<$Res>(_value.currencyDetail, (value) {
      return _then(_value.copyWith(currencyDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderStatementImplCopyWith<$Res>
    implements $OrderStatementCopyWith<$Res> {
  factory _$$OrderStatementImplCopyWith(_$OrderStatementImpl value,
          $Res Function(_$OrderStatementImpl) then) =
      __$$OrderStatementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShoppingCartItem> products,
      int deliveryFee,
      int serviceFee,
      int productTotalAmount,
      int totalAmount,
      CurrencyDetail currencyDetail});

  @override
  $CurrencyDetailCopyWith<$Res> get currencyDetail;
}

/// @nodoc
class __$$OrderStatementImplCopyWithImpl<$Res>
    extends _$OrderStatementCopyWithImpl<$Res, _$OrderStatementImpl>
    implements _$$OrderStatementImplCopyWith<$Res> {
  __$$OrderStatementImplCopyWithImpl(
      _$OrderStatementImpl _value, $Res Function(_$OrderStatementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveryFee = null,
    Object? serviceFee = null,
    Object? productTotalAmount = null,
    Object? totalAmount = null,
    Object? currencyDetail = null,
  }) {
    return _then(_$OrderStatementImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItem>,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalAmount: null == productTotalAmount
          ? _value.productTotalAmount
          : productTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      currencyDetail: null == currencyDetail
          ? _value.currencyDetail
          : currencyDetail // ignore: cast_nullable_to_non_nullable
              as CurrencyDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatementImpl extends _OrderStatement {
  const _$OrderStatementImpl(
      {required final List<ShoppingCartItem> products,
      required this.deliveryFee,
      required this.serviceFee,
      required this.productTotalAmount,
      required this.totalAmount,
      required this.currencyDetail})
      : _products = products,
        super._();

  factory _$OrderStatementImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatementImplFromJson(json);

  final List<ShoppingCartItem> _products;
  @override
  List<ShoppingCartItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int deliveryFee;
  @override
  final int serviceFee;
  @override
  final int productTotalAmount;
  @override
  final int totalAmount;
  @override
  final CurrencyDetail currencyDetail;

  @override
  String toString() {
    return 'OrderStatement(products: $products, deliveryFee: $deliveryFee, serviceFee: $serviceFee, productTotalAmount: $productTotalAmount, totalAmount: $totalAmount, currencyDetail: $currencyDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatementImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.productTotalAmount, productTotalAmount) ||
                other.productTotalAmount == productTotalAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currencyDetail, currencyDetail) ||
                other.currencyDetail == currencyDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      deliveryFee,
      serviceFee,
      productTotalAmount,
      totalAmount,
      currencyDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatementImplCopyWith<_$OrderStatementImpl> get copyWith =>
      __$$OrderStatementImplCopyWithImpl<_$OrderStatementImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatementImplToJson(
      this,
    );
  }
}

abstract class _OrderStatement extends OrderStatement {
  const factory _OrderStatement(
      {required final List<ShoppingCartItem> products,
      required final int deliveryFee,
      required final int serviceFee,
      required final int productTotalAmount,
      required final int totalAmount,
      required final CurrencyDetail currencyDetail}) = _$OrderStatementImpl;
  const _OrderStatement._() : super._();

  factory _OrderStatement.fromJson(Map<String, dynamic> json) =
      _$OrderStatementImpl.fromJson;

  @override
  List<ShoppingCartItem> get products;
  @override
  int get deliveryFee;
  @override
  int get serviceFee;
  @override
  int get productTotalAmount;
  @override
  int get totalAmount;
  @override
  CurrencyDetail get currencyDetail;
  @override
  @JsonKey(ignore: true)
  _$$OrderStatementImplCopyWith<_$OrderStatementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
