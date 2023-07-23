import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class BuytoutApplicationBody extends ConsumerWidget {
  final int initialIndex;

  const BuytoutApplicationBody({Key? key, this.initialIndex = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(navigationViewModelProvider(initialIndex).notifier);
    final currentIndex = ref.watch(navigationViewModelProvider(initialIndex));

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeUI(),
          CartUI(),
          FavoriteUI(),
          AccountUI(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarM3(
        index: currentIndex,
        onDestinationSelected: vm.changeIndex,
      ),
    );
  }
}
