import 'package:buytout/shared/index.dart';

final imageSliverVmProvider =
    StateNotifierProvider.autoDispose<ImageSliderVm, int>(
  (_) => ImageSliderVm(),
);

class ImageSliderVm extends StateNotifier<int> {
  ImageSliderVm() : super(0);

  void moveImageIndex(int index) {
    state = index;
  }
}
