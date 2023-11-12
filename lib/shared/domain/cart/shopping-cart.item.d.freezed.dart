// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping-cart.item.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShoppingCartItem _$ShoppingCartItemFromJson(Map<String, dynamic> json) {
  return _ShoppingCartItem.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCartItem {
  int get quantity => throw _privateConstructorUsedError;
  ProdLite get product => throw _privateConstructorUsedError;
  dynamic get productAttribute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartItemCopyWith<ShoppingCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartItemCopyWith<$Res> {
  factory $ShoppingCartItemCopyWith(
          ShoppingCartItem value, $Res Function(ShoppingCartItem) then) =
      _$ShoppingCartItemCopyWithImpl<$Res, ShoppingCartItem>;
  @useResult
  $Res call({int quantity, ProdLite product, dynamic productAttribute});

  $ProdLiteCopyWith<$Res> get product;
}

/// @nodoc
class _$ShoppingCartItemCopyWithImpl<$Res, $Val extends ShoppingCartItem>
    implements $ShoppingCartItemCopyWith<$Res> {
  _$ShoppingCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
    Object? productAttribute = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProdLite,
      productAttribute: freezed == productAttribute
          ? _value.productAttribute
          : productAttribute // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdLiteCopyWith<$Res> get product {
    return $ProdLiteCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShoppingCartItemImplCopyWith<$Res>
    implements $ShoppingCartItemCopyWith<$Res> {
  factory _$$ShoppingCartItemImplCopyWith(_$ShoppingCartItemImpl value,
          $Res Function(_$ShoppingCartItemImpl) then) =
      __$$ShoppingCartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int quantity, ProdLite product, dynamic productAttribute});

  @override
  $ProdLiteCopyWith<$Res> get product;
}

/// @nodoc
class __$$ShoppingCartItemImplCopyWithImpl<$Res>
    extends _$ShoppingCartItemCopyWithImpl<$Res, _$ShoppingCartItemImpl>
    implements _$$ShoppingCartItemImplCopyWith<$Res> {
  __$$ShoppingCartItemImplCopyWithImpl(_$ShoppingCartItemImpl _value,
      $Res Function(_$ShoppingCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quantity = null,
    Object? product = null,
    Object? productAttribute = freezed,
  }) {
    return _then(_$ShoppingCartItemImpl(
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProdLite,
      productAttribute: freezed == productAttribute
          ? _value.productAttribute
          : productAttribute // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoppingCartItemImpl extends _ShoppingCartItem {
  const _$ShoppingCartItemImpl(
      {required this.quantity,
      required this.product,
      this.productAttribute = null})
      : super._();

  factory _$ShoppingCartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingCartItemImplFromJson(json);

  @override
  final int quantity;
  @override
  final ProdLite product;
  @override
  @JsonKey()
  final dynamic productAttribute;

  @override
  String toString() {
    return 'ShoppingCartItem(quantity: $quantity, product: $product, productAttribute: $productAttribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartItemImpl &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other.productAttribute, productAttribute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quantity, product,
      const DeepCollectionEquality().hash(productAttribute));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCartItemImplCopyWith<_$ShoppingCartItemImpl> get copyWith =>
      __$$ShoppingCartItemImplCopyWithImpl<_$ShoppingCartItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingCartItemImplToJson(
      this,
    );
  }
}

abstract class _ShoppingCartItem extends ShoppingCartItem {
  const factory _ShoppingCartItem(
      {required final int quantity,
      required final ProdLite product,
      final dynamic productAttribute}) = _$ShoppingCartItemImpl;
  const _ShoppingCartItem._() : super._();

  factory _ShoppingCartItem.fromJson(Map<String, dynamic> json) =
      _$ShoppingCartItemImpl.fromJson;

  @override
  int get quantity;
  @override
  ProdLite get product;
  @override
  dynamic get productAttribute;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingCartItemImplCopyWith<_$ShoppingCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
