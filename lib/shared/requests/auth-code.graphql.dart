import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    mutation REG($code: String!, $email: String!) {
      register(code: $code, email: $email) {
        accessToken
        refreshToken
      }
    }
  """,
);

DocumentNode get authCodeRequest => _request;
