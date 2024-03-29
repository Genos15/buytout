// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product-cart.item.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductCartItem _$ProductCartItemFromJson(Map<String, dynamic> json) {
  return _ProductCartItem.fromJson(json);
}

/// @nodoc
mixin _$ProductCartItem {
  String get id => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCartItemCopyWith<ProductCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartItemCopyWith<$Res> {
  factory $ProductCartItemCopyWith(
          ProductCartItem value, $Res Function(ProductCartItem) then) =
      _$ProductCartItemCopyWithImpl<$Res, ProductCartItem>;
  @useResult
  $Res call({String id, String productId, int quantity});
}

/// @nodoc
class _$ProductCartItemCopyWithImpl<$Res, $Val extends ProductCartItem>
    implements $ProductCartItemCopyWith<$Res> {
  _$ProductCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCartItemCopyWith<$Res>
    implements $ProductCartItemCopyWith<$Res> {
  factory _$$_ProductCartItemCopyWith(
          _$_ProductCartItem value, $Res Function(_$_ProductCartItem) then) =
      __$$_ProductCartItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String productId, int quantity});
}

/// @nodoc
class __$$_ProductCartItemCopyWithImpl<$Res>
    extends _$ProductCartItemCopyWithImpl<$Res, _$_ProductCartItem>
    implements _$$_ProductCartItemCopyWith<$Res> {
  __$$_ProductCartItemCopyWithImpl(
      _$_ProductCartItem _value, $Res Function(_$_ProductCartItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$_ProductCartItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductCartItem extends _ProductCartItem {
  const _$_ProductCartItem(
      {required this.id, required this.productId, required this.quantity})
      : super._();

  factory _$_ProductCartItem.fromJson(Map<String, dynamic> json) =>
      _$$_ProductCartItemFromJson(json);

  @override
  final String id;
  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ProductCartItem(id: $id, productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCartItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCartItemCopyWith<_$_ProductCartItem> get copyWith =>
      __$$_ProductCartItemCopyWithImpl<_$_ProductCartItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductCartItemToJson(
      this,
    );
  }
}

abstract class _ProductCartItem extends ProductCartItem {
  const factory _ProductCartItem(
      {required final String id,
      required final String productId,
      required final int quantity}) = _$_ProductCartItem;
  const _ProductCartItem._() : super._();

  factory _ProductCartItem.fromJson(Map<String, dynamic> json) =
      _$_ProductCartItem.fromJson;

  @override
  String get id;
  @override
  String get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCartItemCopyWith<_$_ProductCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
