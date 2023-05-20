import 'package:buytout/shared/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_viewmodel_state.freezed.dart';

@freezed
@immutable
class HomeViewModelState with _$HomeViewModelState {
  const HomeViewModelState._();

  const factory HomeViewModelState({
    required Result<Iterable<ProductPreview>> newArrivalProductPreviews,
    required Result<Iterable<ProductPreview>> productPreviews,
  }) = _HomeViewModelState;

  factory HomeViewModelState.initialize() {
    return HomeViewModelState(
      newArrivalProductPreviews: Idle(),
      productPreviews: Idle(),
    );
  }

  HomeViewModelState secondCopyWith({
    Result<Iterable<ProductPreview>>? newArrivalProductPreviews,
    Result<Iterable<ProductPreview>>? productPreviews,
  }) {
    return HomeViewModelState(
      newArrivalProductPreviews:
          newArrivalProductPreviews ?? this.newArrivalProductPreviews,
      productPreviews: productPreviews ?? this.productPreviews,
    );
  }
}
