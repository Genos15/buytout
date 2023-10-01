import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class FavoriteUi extends StatelessWidget {
  const FavoriteUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = AppContextProvider.authStateOf(context);

    if (!authState.isLogged) {
      return SignUi(
        authState: authState,
        fallback: const FavoriteUi(),
        title: 'Les favoris',
      );
    }

    return const RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.favorite,
        centerTitle: true,
        title: AutoSizeText(
          'Les favoris',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [],
      overlays: [],
    );
  }
}
