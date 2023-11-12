import 'package:buytout/shared/index.dart';

part 'home-ui.vm.state.freezed.dart';

part 'home-ui.vm.state.g.dart';

@freezed
@immutable
class HomeUiState with _$HomeUiState {
  const HomeUiState._();

  const factory HomeUiState({
    required List<Category> specialCategories,
    required List<Category> categories,
  }) = _HomeUiState;

  factory HomeUiState.fromJson(Map<String, dynamic> json) =>
      _$HomeUiStateFromJson(json);
}

typedef HomeUiVmState = AsyncValue<HomeUiState>;
