import 'package:buytout/shared/index.dart';

part 'bottom.nav-ui.vm.state.freezed.dart';

part 'bottom.nav-ui.vm.state.g.dart';

@freezed
@immutable
class BottomNavUiState with _$BottomNavUiState {
  const BottomNavUiState._();

  const factory BottomNavUiState({required BottomNavState current}) =
      _BottomNavUiState;

  factory BottomNavUiState.fromJson(Map<String, dynamic> json) =>
      _$BottomNavUiStateFromJson(json);
}
