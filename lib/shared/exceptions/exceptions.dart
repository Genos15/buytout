import 'package:buytout/config/index.dart';
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
  }
}
