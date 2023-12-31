// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prod.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProdLite _$ProdLiteFromJson(Map<String, dynamic> json) {
  return _ProdLite.fromJson(json);
}

/// @nodoc
mixin _$ProdLite {
  String get productId => throw _privateConstructorUsedError;
  String get productNameEn => throw _privateConstructorUsedError;
  LanguageMap get productNameOtherLanguages =>
      throw _privateConstructorUsedError;
  PricePerCurrency get pricePerCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdLiteCopyWith<ProdLite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdLiteCopyWith<$Res> {
  factory $ProdLiteCopyWith(ProdLite value, $Res Function(ProdLite) then) =
      _$ProdLiteCopyWithImpl<$Res, ProdLite>;
  @useResult
  $Res call(
      {String productId,
      String productNameEn,
      LanguageMap productNameOtherLanguages,
      PricePerCurrency pricePerCurrency});

  $LanguageMapCopyWith<$Res> get productNameOtherLanguages;
  $PricePerCurrencyCopyWith<$Res> get pricePerCurrency;
}

/// @nodoc
class _$ProdLiteCopyWithImpl<$Res, $Val extends ProdLite>
    implements $ProdLiteCopyWith<$Res> {
  _$ProdLiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productNameEn = null,
    Object? productNameOtherLanguages = null,
    Object? pricePerCurrency = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productNameOtherLanguages: null == productNameOtherLanguages
          ? _value.productNameOtherLanguages
          : productNameOtherLanguages // ignore: cast_nullable_to_non_nullable
              as LanguageMap,
      pricePerCurrency: null == pricePerCurrency
          ? _value.pricePerCurrency
          : pricePerCurrency // ignore: cast_nullable_to_non_nullable
              as PricePerCurrency,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageMapCopyWith<$Res> get productNameOtherLanguages {
    return $LanguageMapCopyWith<$Res>(_value.productNameOtherLanguages,
        (value) {
      return _then(_value.copyWith(productNameOtherLanguages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PricePerCurrencyCopyWith<$Res> get pricePerCurrency {
    return $PricePerCurrencyCopyWith<$Res>(_value.pricePerCurrency, (value) {
      return _then(_value.copyWith(pricePerCurrency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProdLiteImplCopyWith<$Res>
    implements $ProdLiteCopyWith<$Res> {
  factory _$$ProdLiteImplCopyWith(
          _$ProdLiteImpl value, $Res Function(_$ProdLiteImpl) then) =
      __$$ProdLiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productNameEn,
      LanguageMap productNameOtherLanguages,
      PricePerCurrency pricePerCurrency});

  @override
  $LanguageMapCopyWith<$Res> get productNameOtherLanguages;
  @override
  $PricePerCurrencyCopyWith<$Res> get pricePerCurrency;
}

/// @nodoc
class __$$ProdLiteImplCopyWithImpl<$Res>
    extends _$ProdLiteCopyWithImpl<$Res, _$ProdLiteImpl>
    implements _$$ProdLiteImplCopyWith<$Res> {
  __$$ProdLiteImplCopyWithImpl(
      _$ProdLiteImpl _value, $Res Function(_$ProdLiteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productNameEn = null,
    Object? productNameOtherLanguages = null,
    Object? pricePerCurrency = null,
  }) {
    return _then(_$ProdLiteImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productNameOtherLanguages: null == productNameOtherLanguages
          ? _value.productNameOtherLanguages
          : productNameOtherLanguages // ignore: cast_nullable_to_non_nullable
              as LanguageMap,
      pricePerCurrency: null == pricePerCurrency
          ? _value.pricePerCurrency
          : pricePerCurrency // ignore: cast_nullable_to_non_nullable
              as PricePerCurrency,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProdLiteImpl extends _ProdLite {
  const _$ProdLiteImpl(
      {required this.productId,
      required this.productNameEn,
      required this.productNameOtherLanguages,
      required this.pricePerCurrency})
      : super._();

  factory _$ProdLiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProdLiteImplFromJson(json);

  @override
  final String productId;
  @override
  final String productNameEn;
  @override
  final LanguageMap productNameOtherLanguages;
  @override
  final PricePerCurrency pricePerCurrency;

  @override
  String toString() {
    return 'ProdLite(productId: $productId, productNameEn: $productNameEn, productNameOtherLanguages: $productNameOtherLanguages, pricePerCurrency: $pricePerCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdLiteImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productNameEn, productNameEn) ||
                other.productNameEn == productNameEn) &&
            (identical(other.productNameOtherLanguages,
                    productNameOtherLanguages) ||
                other.productNameOtherLanguages == productNameOtherLanguages) &&
            (identical(other.pricePerCurrency, pricePerCurrency) ||
                other.pricePerCurrency == pricePerCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productNameEn,
      productNameOtherLanguages, pricePerCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdLiteImplCopyWith<_$ProdLiteImpl> get copyWith =>
      __$$ProdLiteImplCopyWithImpl<_$ProdLiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProdLiteImplToJson(
      this,
    );
  }
}

abstract class _ProdLite extends ProdLite {
  const factory _ProdLite(
      {required final String productId,
      required final String productNameEn,
      required final LanguageMap productNameOtherLanguages,
      required final PricePerCurrency pricePerCurrency}) = _$ProdLiteImpl;
  const _ProdLite._() : super._();

  factory _ProdLite.fromJson(Map<String, dynamic> json) =
      _$ProdLiteImpl.fromJson;

  @override
  String get productId;
  @override
  String get productNameEn;
  @override
  LanguageMap get productNameOtherLanguages;
  @override
  PricePerCurrency get pricePerCurrency;
  @override
  @JsonKey(ignore: true)
  _$$ProdLiteImplCopyWith<_$ProdLiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProdDetails _$ProdDetailsFromJson(Map<String, dynamic> json) {
  return _ProdDetails.fromJson(json);
}

/// @nodoc
mixin _$ProdDetails {
  String get productId => throw _privateConstructorUsedError;
  String get productNameEn => throw _privateConstructorUsedError;
  LanguageMap get productNameOtherLanguages =>
      throw _privateConstructorUsedError;
  PricePerCurrency get pricePerCurrency => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  int get discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProdDetailsCopyWith<ProdDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdDetailsCopyWith<$Res> {
  factory $ProdDetailsCopyWith(
          ProdDetails value, $Res Function(ProdDetails) then) =
      _$ProdDetailsCopyWithImpl<$Res, ProdDetails>;
  @useResult
  $Res call(
      {String productId,
      String productNameEn,
      LanguageMap productNameOtherLanguages,
      PricePerCurrency pricePerCurrency,
      int stockQuantity,
      int discount});

  $LanguageMapCopyWith<$Res> get productNameOtherLanguages;
  $PricePerCurrencyCopyWith<$Res> get pricePerCurrency;
}

/// @nodoc
class _$ProdDetailsCopyWithImpl<$Res, $Val extends ProdDetails>
    implements $ProdDetailsCopyWith<$Res> {
  _$ProdDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productNameEn = null,
    Object? productNameOtherLanguages = null,
    Object? pricePerCurrency = null,
    Object? stockQuantity = null,
    Object? discount = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productNameOtherLanguages: null == productNameOtherLanguages
          ? _value.productNameOtherLanguages
          : productNameOtherLanguages // ignore: cast_nullable_to_non_nullable
              as LanguageMap,
      pricePerCurrency: null == pricePerCurrency
          ? _value.pricePerCurrency
          : pricePerCurrency // ignore: cast_nullable_to_non_nullable
              as PricePerCurrency,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageMapCopyWith<$Res> get productNameOtherLanguages {
    return $LanguageMapCopyWith<$Res>(_value.productNameOtherLanguages,
        (value) {
      return _then(_value.copyWith(productNameOtherLanguages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PricePerCurrencyCopyWith<$Res> get pricePerCurrency {
    return $PricePerCurrencyCopyWith<$Res>(_value.pricePerCurrency, (value) {
      return _then(_value.copyWith(pricePerCurrency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProdDetailsImplCopyWith<$Res>
    implements $ProdDetailsCopyWith<$Res> {
  factory _$$ProdDetailsImplCopyWith(
          _$ProdDetailsImpl value, $Res Function(_$ProdDetailsImpl) then) =
      __$$ProdDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productNameEn,
      LanguageMap productNameOtherLanguages,
      PricePerCurrency pricePerCurrency,
      int stockQuantity,
      int discount});

  @override
  $LanguageMapCopyWith<$Res> get productNameOtherLanguages;
  @override
  $PricePerCurrencyCopyWith<$Res> get pricePerCurrency;
}

/// @nodoc
class __$$ProdDetailsImplCopyWithImpl<$Res>
    extends _$ProdDetailsCopyWithImpl<$Res, _$ProdDetailsImpl>
    implements _$$ProdDetailsImplCopyWith<$Res> {
  __$$ProdDetailsImplCopyWithImpl(
      _$ProdDetailsImpl _value, $Res Function(_$ProdDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productNameEn = null,
    Object? productNameOtherLanguages = null,
    Object? pricePerCurrency = null,
    Object? stockQuantity = null,
    Object? discount = null,
  }) {
    return _then(_$ProdDetailsImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productNameOtherLanguages: null == productNameOtherLanguages
          ? _value.productNameOtherLanguages
          : productNameOtherLanguages // ignore: cast_nullable_to_non_nullable
              as LanguageMap,
      pricePerCurrency: null == pricePerCurrency
          ? _value.pricePerCurrency
          : pricePerCurrency // ignore: cast_nullable_to_non_nullable
              as PricePerCurrency,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProdDetailsImpl extends _ProdDetails {
  const _$ProdDetailsImpl(
      {required this.productId,
      required this.productNameEn,
      required this.productNameOtherLanguages,
      required this.pricePerCurrency,
      required this.stockQuantity,
      required this.discount})
      : super._();

  factory _$ProdDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProdDetailsImplFromJson(json);

  @override
  final String productId;
  @override
  final String productNameEn;
  @override
  final LanguageMap productNameOtherLanguages;
  @override
  final PricePerCurrency pricePerCurrency;
  @override
  final int stockQuantity;
  @override
  final int discount;

  @override
  String toString() {
    return 'ProdDetails(productId: $productId, productNameEn: $productNameEn, productNameOtherLanguages: $productNameOtherLanguages, pricePerCurrency: $pricePerCurrency, stockQuantity: $stockQuantity, discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdDetailsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productNameEn, productNameEn) ||
                other.productNameEn == productNameEn) &&
            (identical(other.productNameOtherLanguages,
                    productNameOtherLanguages) ||
                other.productNameOtherLanguages == productNameOtherLanguages) &&
            (identical(other.pricePerCurrency, pricePerCurrency) ||
                other.pricePerCurrency == pricePerCurrency) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productNameEn,
      productNameOtherLanguages, pricePerCurrency, stockQuantity, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdDetailsImplCopyWith<_$ProdDetailsImpl> get copyWith =>
      __$$ProdDetailsImplCopyWithImpl<_$ProdDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProdDetailsImplToJson(
      this,
    );
  }
}

abstract class _ProdDetails extends ProdDetails {
  const factory _ProdDetails(
      {required final String productId,
      required final String productNameEn,
      required final LanguageMap productNameOtherLanguages,
      required final PricePerCurrency pricePerCurrency,
      required final int stockQuantity,
      required final int discount}) = _$ProdDetailsImpl;
  const _ProdDetails._() : super._();

  factory _ProdDetails.fromJson(Map<String, dynamic> json) =
      _$ProdDetailsImpl.fromJson;

  @override
  String get productId;
  @override
  String get productNameEn;
  @override
  LanguageMap get productNameOtherLanguages;
  @override
  PricePerCurrency get pricePerCurrency;
  @override
  int get stockQuantity;
  @override
  int get discount;
  @override
  @JsonKey(ignore: true)
  _$$ProdDetailsImplCopyWith<_$ProdDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
