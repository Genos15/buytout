import 'package:buytout/shared/index.dart';

final bottomNavUiVmProvider = StateNotifierProvider.autoDispose
    .family<_BottomNavUiVm, BottomNavUiState, BottomNavState>(
  (ref, defaultState) {
    final defaultVmState = BottomNavUiState(current: defaultState);
    return _BottomNavUiVm(defaultVmState);
  },
);

class _BottomNavUiVm extends StateNotifier<BottomNavUiState> {
  _BottomNavUiVm(super.state);

  void changePage(int currentIndex) {
    final current = BottomNavState.fromId(currentIndex);
    state = state.copyWith(current: current);
  }
}
