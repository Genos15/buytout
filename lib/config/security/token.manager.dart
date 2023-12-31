import 'dart:io';

import 'package:buytout/shared/index.dart';

class TokenManager {
  TokenManager();

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';

  Future<void> saveToken(Token token) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_accessTokenKey, token.accessToken);
    prefs.setString(_refreshTokenKey, token.refreshToken);
  }

  Future<Token?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(_accessTokenKey);
    final refreshToken = prefs.getString(_refreshTokenKey);

    if (accessToken != null && refreshToken != null) {
      return Token(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
    } else {
      return null;
    }
  }

  Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(_accessTokenKey);
    prefs.remove(_refreshTokenKey);
  }

  bool isTokenExpired(Token token) {
    final accessToken = token.accessToken;
    return JwtUtils.isExpired(accessToken);
  }

  Future<Map<String, String>> getAuthorizationHeaders({
    required String refreshTokenHeaderName,
    required String anonymousHeaderName,
    required String anonymousUserName,
  }) async {
    final token = await getToken();
    return switch (token) {
      (Token token) when !isTokenExpired(token) => {
          HttpHeaders.authorizationHeader: 'Bearer ${token.accessToken}',
        },
      (Token token) when isTokenExpired(token) => {
          refreshTokenHeaderName: token.refreshToken,
        },
      _ => {
          anonymousHeaderName: anonymousUserName,
        },
    };
  }

  Future<bool> isUserLogged() async {
    final token = await getToken();
    if (token == null) return false;
    return !isTokenExpired(token);
  }
}
