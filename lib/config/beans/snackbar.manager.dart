import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class _SnackBarHelper {
  final BuildContext context;

  _SnackBarHelper(this.context);

  void success(String message) {
    _showSnackBar(message, CommonColors.success);
  }

  void error(String message) {
    _showSnackBar(message, CommonColors.error);
  }

  void warning(String message) {
    _showSnackBar(message, CommonColors.warning);
  }

  void _showSnackBar(String message, int color) {
    var sm = ScaffoldMessenger.of(context);

    if (!sm.mounted) {
      return;
    }

    var snackBar = SnackBar(
      content: AutoSizeText(message),
      backgroundColor: Color(color),
    );

    sm.hideCurrentSnackBar();

    sm.showSnackBar(snackBar);
  }
}

abstract class SnackBarManager {
  static _SnackBarHelper of(BuildContext context) => _SnackBarHelper(context);
}
