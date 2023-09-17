import 'package:buytout/shared/index.dart';

final loginUiVmProvider =
    StateNotifierProvider.autoDispose<LoginUiVm, LoginUiState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return LoginUiVm(authService);
});

class LoginUiVm extends StateNotifier<LoginUiState> {
  LoginUiVm(this._authService) : super(const LoginUiState());

  final AuthService _authService;

  bool get displayEmailForm => mounted && state.email == null;

  bool get displayCodeForm =>
      mounted && state.email != null && state.code == null;

  Future<void> consumeEmail({
    required String email,
    required void Function(Object, StackTrace) onError,
  }) async {
    try {
      final response = await _authService.authenticate(email: email);
      if (response) {
        state = state.copyWith(email: email);
      }
    } on Object catch (error, stacktrace) {
      onError(error, stacktrace);
    }
  }

  Future<void> consumeValidationCode({
    required String code,
    required void Function() onSuccess,
    required void Function(Object, StackTrace) onError,
  }) async {
    try {
      await _authService.register(code: code, email: state.email!);
      onSuccess();
    } on Object catch (error, stacktrace) {
      onError(error, stacktrace);
    }
  }

  @override
  void dispose() {
    state = const LoginUiState();
    super.dispose();
  }
}
