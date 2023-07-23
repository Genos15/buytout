import 'package:buytout/shared/index.dart';

part 'home.viewmodel.state.freezed.dart';

@freezed
@immutable
class HomeViewModelState with _$HomeViewModelState {
  const HomeViewModelState._();

  const factory HomeViewModelState({
    required Result<Iterable<Product>> newProducts,
    required Result<Iterable<Product>> products,
  }) = _HomeViewModelState;
}
