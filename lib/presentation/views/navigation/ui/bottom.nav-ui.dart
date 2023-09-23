import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class BuytoutApplicationBody extends ConsumerWidget {
  final BottomNavState initialPage;

  const BuytoutApplicationBody({
    Key? key,
    this.initialPage = BottomNavState.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(bottomNavUiVmProvider(initialPage).notifier);
    final vmState = ref.watch(bottomNavUiVmProvider(initialPage));

    return Scaffold(
      body: IndexedStack(
        index: vmState.current.index,
        children: const [
          HomeUI(),
          CartUI(),
          FavoriteUI(),
          AccountUI(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarM3(
        index: vmState.current.index,
        onDestinationSelected: vm.changePage,
      ),
    );
  }
}
