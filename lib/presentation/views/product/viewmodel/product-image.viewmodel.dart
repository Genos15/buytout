import 'package:buytout/shared/index.dart';

final productImageViewModelProvider =
    StateNotifierProvider.autoDispose<_ProductImageViewModel, int>(
        (_) => _ProductImageViewModel());

class _ProductImageViewModel extends StateNotifier<int> {
  _ProductImageViewModel() : super(0);

  void moveImageIndex(int index) {
    state = index;
  }
}
