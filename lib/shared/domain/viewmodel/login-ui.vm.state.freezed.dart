// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login-ui.vm.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginUiState _$LoginUiStateFromJson(Map<String, dynamic> json) {
  return _LoginUiState.fromJson(json);
}

/// @nodoc
mixin _$LoginUiState {
  String? get email => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginUiStateCopyWith<LoginUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginUiStateCopyWith<$Res> {
  factory $LoginUiStateCopyWith(
          LoginUiState value, $Res Function(LoginUiState) then) =
      _$LoginUiStateCopyWithImpl<$Res, LoginUiState>;
  @useResult
  $Res call({String? email, String? code});
}

/// @nodoc
class _$LoginUiStateCopyWithImpl<$Res, $Val extends LoginUiState>
    implements $LoginUiStateCopyWith<$Res> {
  _$LoginUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginUiStateCopyWith<$Res>
    implements $LoginUiStateCopyWith<$Res> {
  factory _$$_LoginUiStateCopyWith(
          _$_LoginUiState value, $Res Function(_$_LoginUiState) then) =
      __$$_LoginUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? code});
}

/// @nodoc
class __$$_LoginUiStateCopyWithImpl<$Res>
    extends _$LoginUiStateCopyWithImpl<$Res, _$_LoginUiState>
    implements _$$_LoginUiStateCopyWith<$Res> {
  __$$_LoginUiStateCopyWithImpl(
      _$_LoginUiState _value, $Res Function(_$_LoginUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_LoginUiState(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginUiState extends _LoginUiState {
  const _$_LoginUiState({this.email, this.code}) : super._();

  factory _$_LoginUiState.fromJson(Map<String, dynamic> json) =>
      _$$_LoginUiStateFromJson(json);

  @override
  final String? email;
  @override
  final String? code;

  @override
  String toString() {
    return 'LoginUiState(email: $email, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginUiStateCopyWith<_$_LoginUiState> get copyWith =>
      __$$_LoginUiStateCopyWithImpl<_$_LoginUiState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginUiStateToJson(
      this,
    );
  }
}

abstract class _LoginUiState extends LoginUiState {
  const factory _LoginUiState({final String? email, final String? code}) =
      _$_LoginUiState;
  const _LoginUiState._() : super._();

  factory _LoginUiState.fromJson(Map<String, dynamic> json) =
      _$_LoginUiState.fromJson;

  @override
  String? get email;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_LoginUiStateCopyWith<_$_LoginUiState> get copyWith =>
      throw _privateConstructorUsedError;
}