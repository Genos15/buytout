import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class FavoriteUI extends StatelessWidget {
  const FavoriteUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.favorite,
        centerTitle: true,
        title: AutoSizeText(
          'Favorites',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [],
      overlays: [],
    );
  }
}
