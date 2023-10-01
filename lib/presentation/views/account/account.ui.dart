import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class AccountUi extends StatelessWidget {
  const AccountUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = AppContextProvider.authStateOf(context);

    if (!authState.isLogged) {
      return SignUi(
        authState: authState,
        fallback: const AccountUi(),
        title: 'Mon compte',
      );
    }

    return const RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.account,
        centerTitle: true,
        title: AutoSizeText(
          'Mon compte',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [],
      overlays: [],
    );
  }
}
