import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final authManagerProvider = FutureProvider.autoDispose<AuthState>((ref) async {
  final tokenManager = ref.read(tokenManagerProvider);
  final isUserLogged = await tokenManager.isUserLogged();

  Object? user = switch (isUserLogged) {
    true => {},
    _ => null,
  };

  return AuthState(user: user, isLogged: isUserLogged);
});
