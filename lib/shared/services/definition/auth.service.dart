import 'package:buytout/shared/index.dart';

abstract interface class AuthService {
  Future<bool> authenticate({required String email});

  Future<Token> register({required String code, required String email});
}
