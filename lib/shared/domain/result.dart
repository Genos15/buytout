import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
@immutable
sealed class Result<T> with _$Result {
  const factory Result.idle() = Idle;

  const factory Result(T value) = Data;

  const factory Result.loading() = Loading;

  const factory Result.error([Exception? exception, StackTrace? stackTrace]) =
      ErrorDetails;
}
