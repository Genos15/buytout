import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class AccountUI extends StatelessWidget {
  const AccountUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.account(
        title: const AutoSizeText('Account').black,
      ),
      slivers: const [],
      overlays: const [],
    );
  }
}
