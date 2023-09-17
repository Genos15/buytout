import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get name => kReleaseMode ? '.env.prod' : '.env';

  static String get baseURL => dotenv.get('BASE_URL');

  static String get imageBaseURL => dotenv.get('IMAGE_BASE_URL');

  static String get gqlWsLinkRef => dotenv.get('GQL_WS_LINK_REF');

  static String get gqlBaseLinkRef => dotenv.get('GQL_BASE_LINK_REF');

  static String get anonymousUserName => dotenv.get('ANONYMOUS_USER_NAME');

  static String get anonymousHeaderName => dotenv.get('ANONYMOUS_HEADER_NAME');

  static String get refreshTokenHeaderName => dotenv.get('REFRESH_TOKEN_HEADER_NAME');

  static String get imageLink => 'https://placehold.co/600x400.png';
}
