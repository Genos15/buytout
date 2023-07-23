import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class FavoriteUI extends StatelessWidget {
  const FavoriteUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.favorite(
        title: const AutoSizeText('Favorites').black,
      ),
      slivers: const [],
      overlays: const [],
    );
  }
}
