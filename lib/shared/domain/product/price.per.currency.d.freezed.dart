// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price.per.currency.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PricePerCurrency _$PricePerCurrencyFromJson(Map<String, dynamic> json) {
  return _PricePerCurrency.fromJson(json);
}

/// @nodoc
mixin _$PricePerCurrency {
  @JsonKey(name: 'XAF')
  int get xaf => throw _privateConstructorUsedError;
  @JsonKey(name: 'EURO')
  int? get euro => throw _privateConstructorUsedError;
  @JsonKey(name: 'DOLLAR')
  int? get dollar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PricePerCurrencyCopyWith<PricePerCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PricePerCurrencyCopyWith<$Res> {
  factory $PricePerCurrencyCopyWith(
          PricePerCurrency value, $Res Function(PricePerCurrency) then) =
      _$PricePerCurrencyCopyWithImpl<$Res, PricePerCurrency>;
  @useResult
  $Res call(
      {@JsonKey(name: 'XAF') int xaf,
      @JsonKey(name: 'EURO') int? euro,
      @JsonKey(name: 'DOLLAR') int? dollar});
}

/// @nodoc
class _$PricePerCurrencyCopyWithImpl<$Res, $Val extends PricePerCurrency>
    implements $PricePerCurrencyCopyWith<$Res> {
  _$PricePerCurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xaf = null,
    Object? euro = freezed,
    Object? dollar = freezed,
  }) {
    return _then(_value.copyWith(
      xaf: null == xaf
          ? _value.xaf
          : xaf // ignore: cast_nullable_to_non_nullable
              as int,
      euro: freezed == euro
          ? _value.euro
          : euro // ignore: cast_nullable_to_non_nullable
              as int?,
      dollar: freezed == dollar
          ? _value.dollar
          : dollar // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PricePerCurrencyCopyWith<$Res>
    implements $PricePerCurrencyCopyWith<$Res> {
  factory _$$_PricePerCurrencyCopyWith(
          _$_PricePerCurrency value, $Res Function(_$_PricePerCurrency) then) =
      __$$_PricePerCurrencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'XAF') int xaf,
      @JsonKey(name: 'EURO') int? euro,
      @JsonKey(name: 'DOLLAR') int? dollar});
}

/// @nodoc
class __$$_PricePerCurrencyCopyWithImpl<$Res>
    extends _$PricePerCurrencyCopyWithImpl<$Res, _$_PricePerCurrency>
    implements _$$_PricePerCurrencyCopyWith<$Res> {
  __$$_PricePerCurrencyCopyWithImpl(
      _$_PricePerCurrency _value, $Res Function(_$_PricePerCurrency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xaf = null,
    Object? euro = freezed,
    Object? dollar = freezed,
  }) {
    return _then(_$_PricePerCurrency(
      xaf: null == xaf
          ? _value.xaf
          : xaf // ignore: cast_nullable_to_non_nullable
              as int,
      euro: freezed == euro
          ? _value.euro
          : euro // ignore: cast_nullable_to_non_nullable
              as int?,
      dollar: freezed == dollar
          ? _value.dollar
          : dollar // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PricePerCurrency extends _PricePerCurrency {
  const _$_PricePerCurrency(
      {@JsonKey(name: 'XAF') required this.xaf,
      @JsonKey(name: 'EURO') this.euro = null,
      @JsonKey(name: 'DOLLAR') this.dollar = null})
      : super._();

  factory _$_PricePerCurrency.fromJson(Map<String, dynamic> json) =>
      _$$_PricePerCurrencyFromJson(json);

  @override
  @JsonKey(name: 'XAF')
  final int xaf;
  @override
  @JsonKey(name: 'EURO')
  final int? euro;
  @override
  @JsonKey(name: 'DOLLAR')
  final int? dollar;

  @override
  String toString() {
    return 'PricePerCurrency(xaf: $xaf, euro: $euro, dollar: $dollar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PricePerCurrency &&
            (identical(other.xaf, xaf) || other.xaf == xaf) &&
            (identical(other.euro, euro) || other.euro == euro) &&
            (identical(other.dollar, dollar) || other.dollar == dollar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, xaf, euro, dollar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PricePerCurrencyCopyWith<_$_PricePerCurrency> get copyWith =>
      __$$_PricePerCurrencyCopyWithImpl<_$_PricePerCurrency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PricePerCurrencyToJson(
      this,
    );
  }
}

abstract class _PricePerCurrency extends PricePerCurrency {
  const factory _PricePerCurrency(
      {@JsonKey(name: 'XAF') required final int xaf,
      @JsonKey(name: 'EURO') final int? euro,
      @JsonKey(name: 'DOLLAR') final int? dollar}) = _$_PricePerCurrency;
  const _PricePerCurrency._() : super._();

  factory _PricePerCurrency.fromJson(Map<String, dynamic> json) =
      _$_PricePerCurrency.fromJson;

  @override
  @JsonKey(name: 'XAF')
  int get xaf;
  @override
  @JsonKey(name: 'EURO')
  int? get euro;
  @override
  @JsonKey(name: 'DOLLAR')
  int? get dollar;
  @override
  @JsonKey(ignore: true)
  _$$_PricePerCurrencyCopyWith<_$_PricePerCurrency> get copyWith =>
      throw _privateConstructorUsedError;
}
