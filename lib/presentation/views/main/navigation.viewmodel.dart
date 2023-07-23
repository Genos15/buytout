import 'package:buytout/shared/index.dart';

final navigationViewModelProvider =
    StateNotifierProvider.autoDispose.family<_NavigationViewModel, int, int>(
  (ref, index) => _NavigationViewModel(index),
);

class _NavigationViewModel extends StateNotifier<int> {
  _NavigationViewModel(super.state);

  void changeIndex(int currentIndex) {
    state = currentIndex;
  }
}
