// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart-ui.vm.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartUiState _$CartUiStateFromJson(Map<String, dynamic> json) {
  return _CartUiState.fromJson(json);
}

/// @nodoc
mixin _$CartUiState {
  OrderStatement get cart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartUiStateCopyWith<CartUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartUiStateCopyWith<$Res> {
  factory $CartUiStateCopyWith(
          CartUiState value, $Res Function(CartUiState) then) =
      _$CartUiStateCopyWithImpl<$Res, CartUiState>;
  @useResult
  $Res call({OrderStatement cart});

  $OrderStatementCopyWith<$Res> get cart;
}

/// @nodoc
class _$CartUiStateCopyWithImpl<$Res, $Val extends CartUiState>
    implements $CartUiStateCopyWith<$Res> {
  _$CartUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as OrderStatement,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatementCopyWith<$Res> get cart {
    return $OrderStatementCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartUiStateImplCopyWith<$Res>
    implements $CartUiStateCopyWith<$Res> {
  factory _$$CartUiStateImplCopyWith(
          _$CartUiStateImpl value, $Res Function(_$CartUiStateImpl) then) =
      __$$CartUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStatement cart});

  @override
  $OrderStatementCopyWith<$Res> get cart;
}

/// @nodoc
class __$$CartUiStateImplCopyWithImpl<$Res>
    extends _$CartUiStateCopyWithImpl<$Res, _$CartUiStateImpl>
    implements _$$CartUiStateImplCopyWith<$Res> {
  __$$CartUiStateImplCopyWithImpl(
      _$CartUiStateImpl _value, $Res Function(_$CartUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartUiStateImpl(
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as OrderStatement,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartUiStateImpl extends _CartUiState {
  const _$CartUiStateImpl({required this.cart}) : super._();

  factory _$CartUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartUiStateImplFromJson(json);

  @override
  final OrderStatement cart;

  @override
  String toString() {
    return 'CartUiState(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartUiStateImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartUiStateImplCopyWith<_$CartUiStateImpl> get copyWith =>
      __$$CartUiStateImplCopyWithImpl<_$CartUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartUiStateImplToJson(
      this,
    );
  }
}

abstract class _CartUiState extends CartUiState {
  const factory _CartUiState({required final OrderStatement cart}) =
      _$CartUiStateImpl;
  const _CartUiState._() : super._();

  factory _CartUiState.fromJson(Map<String, dynamic> json) =
      _$CartUiStateImpl.fromJson;

  @override
  OrderStatement get cart;
  @override
  @JsonKey(ignore: true)
  _$$CartUiStateImplCopyWith<_$CartUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
