import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String get name => kReleaseMode ? '.env.prod' : '.env';

  static String get baseURL => dotenv.get('BASE_URL');

  static String get imageBaseURL => dotenv.get('IMAGE_BASE_URL');
}
