// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency-detail.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyDetail _$CurrencyDetailFromJson(Map<String, dynamic> json) {
  return _CurrencyDetail.fromJson(json);
}

/// @nodoc
mixin _$CurrencyDetail {
  String get currencyCode => throw _privateConstructorUsedError;
  String get currencySymbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDetailCopyWith<CurrencyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDetailCopyWith<$Res> {
  factory $CurrencyDetailCopyWith(
          CurrencyDetail value, $Res Function(CurrencyDetail) then) =
      _$CurrencyDetailCopyWithImpl<$Res, CurrencyDetail>;
  @useResult
  $Res call({String currencyCode, String currencySymbol});
}

/// @nodoc
class _$CurrencyDetailCopyWithImpl<$Res, $Val extends CurrencyDetail>
    implements $CurrencyDetailCopyWith<$Res> {
  _$CurrencyDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? currencySymbol = null,
  }) {
    return _then(_value.copyWith(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyDetailCopyWith<$Res>
    implements $CurrencyDetailCopyWith<$Res> {
  factory _$$_CurrencyDetailCopyWith(
          _$_CurrencyDetail value, $Res Function(_$_CurrencyDetail) then) =
      __$$_CurrencyDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currencyCode, String currencySymbol});
}

/// @nodoc
class __$$_CurrencyDetailCopyWithImpl<$Res>
    extends _$CurrencyDetailCopyWithImpl<$Res, _$_CurrencyDetail>
    implements _$$_CurrencyDetailCopyWith<$Res> {
  __$$_CurrencyDetailCopyWithImpl(
      _$_CurrencyDetail _value, $Res Function(_$_CurrencyDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
    Object? currencySymbol = null,
  }) {
    return _then(_$_CurrencyDetail(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyDetail extends _CurrencyDetail {
  const _$_CurrencyDetail(
      {required this.currencyCode, required this.currencySymbol})
      : super._();

  factory _$_CurrencyDetail.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDetailFromJson(json);

  @override
  final String currencyCode;
  @override
  final String currencySymbol;

  @override
  String toString() {
    return 'CurrencyDetail(currencyCode: $currencyCode, currencySymbol: $currencySymbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyDetail &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currencyCode, currencySymbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDetailCopyWith<_$_CurrencyDetail> get copyWith =>
      __$$_CurrencyDetailCopyWithImpl<_$_CurrencyDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDetailToJson(
      this,
    );
  }
}

abstract class _CurrencyDetail extends CurrencyDetail {
  const factory _CurrencyDetail(
      {required final String currencyCode,
      required final String currencySymbol}) = _$_CurrencyDetail;
  const _CurrencyDetail._() : super._();

  factory _CurrencyDetail.fromJson(Map<String, dynamic> json) =
      _$_CurrencyDetail.fromJson;

  @override
  String get currencyCode;
  @override
  String get currencySymbol;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDetailCopyWith<_$_CurrencyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
