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
  int get deliveryAmount => throw _privateConstructorUsedError;
  int get productTotalAmount => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;

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
      int deliveryAmount,
      int productTotalAmount,
      int totalAmount,
      String currency});
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
    Object? deliveryAmount = null,
    Object? productTotalAmount = null,
    Object? totalAmount = null,
    Object? currency = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItem>,
      deliveryAmount: null == deliveryAmount
          ? _value.deliveryAmount
          : deliveryAmount // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalAmount: null == productTotalAmount
          ? _value.productTotalAmount
          : productTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStatementCopyWith<$Res>
    implements $OrderStatementCopyWith<$Res> {
  factory _$$_OrderStatementCopyWith(
          _$_OrderStatement value, $Res Function(_$_OrderStatement) then) =
      __$$_OrderStatementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShoppingCartItem> products,
      int deliveryAmount,
      int productTotalAmount,
      int totalAmount,
      String currency});
}

/// @nodoc
class __$$_OrderStatementCopyWithImpl<$Res>
    extends _$OrderStatementCopyWithImpl<$Res, _$_OrderStatement>
    implements _$$_OrderStatementCopyWith<$Res> {
  __$$_OrderStatementCopyWithImpl(
      _$_OrderStatement _value, $Res Function(_$_OrderStatement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? deliveryAmount = null,
    Object? productTotalAmount = null,
    Object? totalAmount = null,
    Object? currency = null,
  }) {
    return _then(_$_OrderStatement(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItem>,
      deliveryAmount: null == deliveryAmount
          ? _value.deliveryAmount
          : deliveryAmount // ignore: cast_nullable_to_non_nullable
              as int,
      productTotalAmount: null == productTotalAmount
          ? _value.productTotalAmount
          : productTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatement extends _OrderStatement {
  const _$_OrderStatement(
      {required final List<ShoppingCartItem> products,
      required this.deliveryAmount,
      required this.productTotalAmount,
      required this.totalAmount,
      required this.currency})
      : _products = products,
        super._();

  factory _$_OrderStatement.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatementFromJson(json);

  final List<ShoppingCartItem> _products;
  @override
  List<ShoppingCartItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int deliveryAmount;
  @override
  final int productTotalAmount;
  @override
  final int totalAmount;
  @override
  final String currency;

  @override
  String toString() {
    return 'OrderStatement(products: $products, deliveryAmount: $deliveryAmount, productTotalAmount: $productTotalAmount, totalAmount: $totalAmount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatement &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.deliveryAmount, deliveryAmount) ||
                other.deliveryAmount == deliveryAmount) &&
            (identical(other.productTotalAmount, productTotalAmount) ||
                other.productTotalAmount == productTotalAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      deliveryAmount,
      productTotalAmount,
      totalAmount,
      currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStatementCopyWith<_$_OrderStatement> get copyWith =>
      __$$_OrderStatementCopyWithImpl<_$_OrderStatement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatementToJson(
      this,
    );
  }
}

abstract class _OrderStatement extends OrderStatement {
  const factory _OrderStatement(
      {required final List<ShoppingCartItem> products,
      required final int deliveryAmount,
      required final int productTotalAmount,
      required final int totalAmount,
      required final String currency}) = _$_OrderStatement;
  const _OrderStatement._() : super._();

  factory _OrderStatement.fromJson(Map<String, dynamic> json) =
      _$_OrderStatement.fromJson;

  @override
  List<ShoppingCartItem> get products;
  @override
  int get deliveryAmount;
  @override
  int get productTotalAmount;
  @override
  int get totalAmount;
  @override
  String get currency;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatementCopyWith<_$_OrderStatement> get copyWith =>
      throw _privateConstructorUsedError;
}
