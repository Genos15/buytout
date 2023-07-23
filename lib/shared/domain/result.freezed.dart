// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? exception, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleCopyWith<T, $Res> {
  factory _$$IdleCopyWith(_$Idle<T> value, $Res Function(_$Idle<T>) then) =
      __$$IdleCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$IdleCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$Idle<T>>
    implements _$$IdleCopyWith<T, $Res> {
  __$$IdleCopyWithImpl(_$Idle<T> _value, $Res Function(_$Idle<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Idle<T> implements Idle<T> {
  const _$Idle();

  @override
  String toString() {
    return 'Result<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? exception, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements Result<T> {
  const factory Idle() = _$Idle<T>;
}

/// @nodoc
abstract class _$$DataCopyWith<T, $Res> {
  factory _$$DataCopyWith(_$Data<T> value, $Res Function(_$Data<T>) then) =
      __$$DataCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$DataCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$Data<T>>
    implements _$$DataCopyWith<T, $Res> {
  __$$DataCopyWithImpl(_$Data<T> _value, $Res Function(_$Data<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Data<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Data<T> implements Data<T> {
  const _$Data(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'Result<$T>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Data<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataCopyWith<T, _$Data<T>> get copyWith =>
      __$$DataCopyWithImpl<T, _$Data<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? exception, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data<T> implements Result<T> {
  const factory Data(final T value) = _$Data<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$DataCopyWith<T, _$Data<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<T> value, $Res Function(_$Loading<T>) then) =
      __$$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$Loading<T>>
    implements _$$LoadingCopyWith<T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<T> _value, $Res Function(_$Loading<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'Result<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? exception, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements Result<T> {
  const factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class _$$ErrorDetailsCopyWith<T, $Res> {
  factory _$$ErrorDetailsCopyWith(
          _$ErrorDetails<T> value, $Res Function(_$ErrorDetails<T>) then) =
      __$$ErrorDetailsCopyWithImpl<T, $Res>;
  @useResult
  $Res call({Exception? exception, StackTrace? stackTrace});
}

/// @nodoc
class __$$ErrorDetailsCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ErrorDetails<T>>
    implements _$$ErrorDetailsCopyWith<T, $Res> {
  __$$ErrorDetailsCopyWithImpl(
      _$ErrorDetails<T> _value, $Res Function(_$ErrorDetails<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$ErrorDetails<T>(
      freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$ErrorDetails<T> implements ErrorDetails<T> {
  const _$ErrorDetails([this.exception, this.stackTrace]);

  @override
  final Exception? exception;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'Result<$T>.error(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetails<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception, stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsCopyWith<T, _$ErrorDetails<T>> get copyWith =>
      __$$ErrorDetailsCopyWithImpl<T, _$ErrorDetails<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(Exception? exception, StackTrace? stackTrace)
        error,
  }) {
    return error(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(Exception? exception, StackTrace? stackTrace)? error,
  }) {
    return error?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(Exception? exception, StackTrace? stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Idle<T> value) idle,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Idle<T> value)? idle,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Idle<T> value)? idle,
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails<T> implements Result<T> {
  const factory ErrorDetails(
      [final Exception? exception,
      final StackTrace? stackTrace]) = _$ErrorDetails<T>;

  Exception? get exception;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  _$$ErrorDetailsCopyWith<T, _$ErrorDetails<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
