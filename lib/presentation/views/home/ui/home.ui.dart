import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.home(title: const Text('Home').black),
      slivers: [
        const ProductListFragment.arrival().sliverBox,
        const ProductListFragment.best().sp8,
      ],
    );
  }
}
