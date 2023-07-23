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
      backgroundColor: CommonColors.white.color,
      shadowColor: CommonColors.white.color,
      onDestinationSelected: onDestinationSelected,
      selectedIndex: index,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.store),
          icon: Icon(CarbonIcons.store),
          label: 'Shop',
        ),
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.shopping_catalog),
          icon: Icon(CarbonIcons.shopping_bag),
          label: 'Cart',
        ),
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.favorite_filled),
          icon: Icon(CarbonIcons.favorite),
          label: 'Favorite',
        ),
        NavigationDestination(
          selectedIcon: Icon(CarbonIcons.user_filled),
          icon: Icon(CarbonIcons.user),
          label: 'Account',
        ),
      ],
    );
  }
}
