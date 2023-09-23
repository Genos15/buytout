// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom.nav-ui.vm.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BottomNavUiState _$BottomNavUiStateFromJson(Map<String, dynamic> json) {
  return _BottomNavUiState.fromJson(json);
}

/// @nodoc
mixin _$BottomNavUiState {
  BottomNavState get current => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BottomNavUiStateCopyWith<BottomNavUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavUiStateCopyWith<$Res> {
  factory $BottomNavUiStateCopyWith(
          BottomNavUiState value, $Res Function(BottomNavUiState) then) =
      _$BottomNavUiStateCopyWithImpl<$Res, BottomNavUiState>;
  @useResult
  $Res call({BottomNavState current});
}

/// @nodoc
class _$BottomNavUiStateCopyWithImpl<$Res, $Val extends BottomNavUiState>
    implements $BottomNavUiStateCopyWith<$Res> {
  _$BottomNavUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as BottomNavState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomNavUiStateCopyWith<$Res>
    implements $BottomNavUiStateCopyWith<$Res> {
  factory _$$_BottomNavUiStateCopyWith(
          _$_BottomNavUiState value, $Res Function(_$_BottomNavUiState) then) =
      __$$_BottomNavUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BottomNavState current});
}

/// @nodoc
class __$$_BottomNavUiStateCopyWithImpl<$Res>
    extends _$BottomNavUiStateCopyWithImpl<$Res, _$_BottomNavUiState>
    implements _$$_BottomNavUiStateCopyWith<$Res> {
  __$$_BottomNavUiStateCopyWithImpl(
      _$_BottomNavUiState _value, $Res Function(_$_BottomNavUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$_BottomNavUiState(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as BottomNavState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BottomNavUiState extends _BottomNavUiState {
  const _$_BottomNavUiState({required this.current}) : super._();

  factory _$_BottomNavUiState.fromJson(Map<String, dynamic> json) =>
      _$$_BottomNavUiStateFromJson(json);

  @override
  final BottomNavState current;

  @override
  String toString() {
    return 'BottomNavUiState(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomNavUiState &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomNavUiStateCopyWith<_$_BottomNavUiState> get copyWith =>
      __$$_BottomNavUiStateCopyWithImpl<_$_BottomNavUiState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BottomNavUiStateToJson(
      this,
    );
  }
}

abstract class _BottomNavUiState extends BottomNavUiState {
  const factory _BottomNavUiState({required final BottomNavState current}) =
      _$_BottomNavUiState;
  const _BottomNavUiState._() : super._();

  factory _BottomNavUiState.fromJson(Map<String, dynamic> json) =
      _$_BottomNavUiState.fromJson;

  @override
  BottomNavState get current;
  @override
  @JsonKey(ignore: true)
  _$$_BottomNavUiStateCopyWith<_$_BottomNavUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
