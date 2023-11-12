// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product-ui.vm.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductUiState _$ProductUiStateFromJson(Map<String, dynamic> json) {
  return _ProductUiState.fromJson(json);
}

/// @nodoc
mixin _$ProductUiState {
  ProdLite get input => throw _privateConstructorUsedError;
  ProdDetails get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductUiStateCopyWith<ProductUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductUiStateCopyWith<$Res> {
  factory $ProductUiStateCopyWith(
          ProductUiState value, $Res Function(ProductUiState) then) =
      _$ProductUiStateCopyWithImpl<$Res, ProductUiState>;
  @useResult
  $Res call({ProdLite input, ProdDetails product});

  $ProdLiteCopyWith<$Res> get input;
  $ProdDetailsCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductUiStateCopyWithImpl<$Res, $Val extends ProductUiState>
    implements $ProductUiStateCopyWith<$Res> {
  _$ProductUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as ProdLite,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProdDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdLiteCopyWith<$Res> get input {
    return $ProdLiteCopyWith<$Res>(_value.input, (value) {
      return _then(_value.copyWith(input: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProdDetailsCopyWith<$Res> get product {
    return $ProdDetailsCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductUiStateImplCopyWith<$Res>
    implements $ProductUiStateCopyWith<$Res> {
  factory _$$ProductUiStateImplCopyWith(_$ProductUiStateImpl value,
          $Res Function(_$ProductUiStateImpl) then) =
      __$$ProductUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProdLite input, ProdDetails product});

  @override
  $ProdLiteCopyWith<$Res> get input;
  @override
  $ProdDetailsCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductUiStateImplCopyWithImpl<$Res>
    extends _$ProductUiStateCopyWithImpl<$Res, _$ProductUiStateImpl>
    implements _$$ProductUiStateImplCopyWith<$Res> {
  __$$ProductUiStateImplCopyWithImpl(
      _$ProductUiStateImpl _value, $Res Function(_$ProductUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? product = null,
  }) {
    return _then(_$ProductUiStateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as ProdLite,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProdDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductUiStateImpl extends _ProductUiState {
  const _$ProductUiStateImpl({required this.input, required this.product})
      : super._();

  factory _$ProductUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductUiStateImplFromJson(json);

  @override
  final ProdLite input;
  @override
  final ProdDetails product;

  @override
  String toString() {
    return 'ProductUiState(input: $input, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductUiStateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, input, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductUiStateImplCopyWith<_$ProductUiStateImpl> get copyWith =>
      __$$ProductUiStateImplCopyWithImpl<_$ProductUiStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductUiStateImplToJson(
      this,
    );
  }
}

abstract class _ProductUiState extends ProductUiState {
  const factory _ProductUiState(
      {required final ProdLite input,
      required final ProdDetails product}) = _$ProductUiStateImpl;
  const _ProductUiState._() : super._();

  factory _ProductUiState.fromJson(Map<String, dynamic> json) =
      _$ProductUiStateImpl.fromJson;

  @override
  ProdLite get input;
  @override
  ProdDetails get product;
  @override
  @JsonKey(ignore: true)
  _$$ProductUiStateImplCopyWith<_$ProductUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
