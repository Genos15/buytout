import 'package:buytout/presentation/index.dart';
import 'package:flutter/material.dart';

mixin CanLoginMixin {
  Future<bool> onSign(BuildContext context) async {
    final isLogged = await showModalBottomSheet<bool?>(
      isScrollControlled: false,
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (context) => const LoginUi(),
    );

    return isLogged ?? false;
  }
}
