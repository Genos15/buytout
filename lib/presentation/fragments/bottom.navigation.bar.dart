import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarM3 extends StatelessWidget {
  final void Function(int) onDestinationSelected;
  final int index;

  const BottomNavigationBarM3({
    Key? key,
    required this.onDestinationSelected,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: const Color(CommonColors.white),
      shadowColor: const Color(CommonColors.white),
      onDestinationSelected: onDestinationSelected,
      selectedIndex: index,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.store),
          icon: Icon(CarbonIcons.store),
          label: 'Boutique',
        ),
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.shopping_catalog),
          icon: Icon(CarbonIcons.shopping_bag),
          label: 'Panier',
        ),
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.favorite_filled),
          icon: Icon(CarbonIcons.favorite),
          label: 'Favoris',
        ),
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.user_filled),
          icon: Icon(CarbonIcons.user),
          label: 'Compte',
        ),
      ],
    );
  }
}
