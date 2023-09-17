import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final authServiceProvider = Provider.autoDispose<AuthService>((ref) {
  final authRepository = ref.read(authRepositoryProvider);
  final tokenManager = ref.read(tokenManagerProvider);
  return AuthServiceImpl(authRepository, tokenManager);
});

class AuthServiceImpl implements AuthService {
  final AuthRepository authRepository;
  final TokenManager tokenManager;

  AuthServiceImpl(this.authRepository, this.tokenManager);

  @override
  Future<bool> authenticate({required String email}) {
    return authRepository.authenticate(email: email);
  }

  @override
  Future<Token> register({required String code, required String email}) async{
    final token = await authRepository.register(code: code, email: email);
    await tokenManager.saveToken(token);
    return token;
  }
}
