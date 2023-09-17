import 'package:buytout/shared/index.dart';

part 'login-ui.vm.state.freezed.dart';

part 'login-ui.vm.state.g.dart';

@freezed
@immutable
class LoginUiState with _$LoginUiState {
  const LoginUiState._();

  const factory LoginUiState({
    String? email,
    String? code,
  }) = _LoginUiState;

  factory LoginUiState.fromJson(Map<String, dynamic> json) =>
      _$LoginUiStateFromJson(json);
}
