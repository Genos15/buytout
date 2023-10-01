import 'package:buytout/shared/index.dart';

part 'auth-state.freezed.dart';

part 'auth-state.g.dart';

@freezed
@immutable
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required Object? user,
    required bool isLogged,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
