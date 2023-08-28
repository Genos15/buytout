import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget {
  const LoginUi({super.key});

  void notifyEmitter(BuildContext context, bool result) {
    Navigator.of(context, rootNavigator: false).pop(result);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.login(
        title: const AutoSizeText('Bienvenu'),
        onCloseLogin: notifyEmitter,
      ),
      slivers: const [
        SliverToBoxAdapter(
          child: AutoSizeText('Here we add the form to send email to user'),
        )
      ],
      overlays: const [],
    );
  }
}
