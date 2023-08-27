import 'dart:async';
import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() async {
  CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  ErrorWidget.builder = (errorDetails) => const ErrorView();

  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await dotenv.load(fileName: Environment.name);

      FlutterError.onError = (FlutterErrorDetails details) async {
        final dynamic exception = details.exception;
        final StackTrace? stackTrace = details.stack;
        if (isInDebugMode) {
          // In development mode simply print to console.
          FlutterError.dumpErrorToConsole(details);
        } else {
          // In production mode report to the application zone
          Zone.current.handleUncaughtError(exception, stackTrace!);
        }
      };
      Intl.defaultLocale = 'fr';
      // initializeDateFormatting();
      runApp(const ProviderScope(
        child: GQLProvider(child: BuytoutApplication()),
      ));
    },
    (error, stackTrace) async {
      if (isInDebugMode) {
        // In development mode simply print to console.
        logger.e('Caught Dart Error!', error, stackTrace);
      } else {
        // In production
        // Report errors to a reporting service such as Sentry or Crashlytics
        // myErrorsHandler.onError(error, stack);
        // exit(1); // you may exit the app
      }
    },
  );
}
