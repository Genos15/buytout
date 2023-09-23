import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class AccountUI extends StatelessWidget {
  const AccountUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.account,
        centerTitle: true,
        title: AutoSizeText(
          'Me',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [],
      overlays: [],
    );
  }
}
