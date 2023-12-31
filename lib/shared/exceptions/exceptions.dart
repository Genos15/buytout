import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

abstract class Exceptions {
  static void propagate(
    BuildContext context, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    SnackBarManager.of(context).error(
      "Nous avons rencontré des problèmes. Si l'erreur persiste, veuillez contacter notre service d'assistance 🙂",
    );
    // todo: logging & monitoring the error

    logger.e('Error => ', error);

    final String errorList = _analyze(error);
    logger.e('Propagation', errorList, stackTrace);
  }

  static const kDefaultMessageError = 'Impossible to read the error message';

  static void monitor(Object? error, StackTrace? stackTrace) {
    // SnackBarManager.of(context).error(
    //   "Nous avons rencontré des problèmes. Si l'erreur persiste, veuillez contacter notre service d'assistance 🙂",
    // );
    // todo: logging & monitoring the error
    try {
      final String errorList = _analyze(error);
      logger.e('Propagation', errorList, stackTrace);
    } on Object catch (error, stacktrace) {
      logger.e('Uncaught error', error, stacktrace);
    }
  }

  static String _analyze(Object? error) => switch (error) {
        OperationException(linkException: final linkException)
            when linkException is UnknownException =>
          _readUnknownException(linkException),
        OperationException(linkException: final linkException)
            when linkException != null =>
          _onOperationException(linkException) ?? kDefaultMessageError,
        OperationException(graphqlErrors: final graphqlErrors)
            when graphqlErrors.isNotEmpty =>
          _readGraphQLErrorList(graphqlErrors),
        dynamic(message: final message) when message != null => message,
        _ => kDefaultMessageError,
      };

  static String? _onOperationException(LinkException linkException) {
    return switch (linkException) {
      ServerException(parsedResponse: final parsedResponse) => parsedResponse
          ?.errors
          ?.map((localError) => localError.message)
          .toList()
          .join("\n"),
      _ => null,
    };
  }

  static String _readGraphQLErrorList(List<GraphQLError> errors) {
    return errors.map((error) => error.message).join("\n");
  }

  static String _readUnknownException(UnknownException error) {
    return error.originalException.toString();
  }
}
