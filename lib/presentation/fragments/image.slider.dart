import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ImageSlider extends ConsumerWidget {
  final List<String> images;
  final void Function(int) onMove;
  final int position;

  const ImageSlider({
    Key? key,
    required this.images,
    required this.onMove,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          options: CarouselOptions(
            height: height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            onPageChanged: (newImageIndex, _) => onMove(newImageIndex),
          ),
          itemBuilder: (context, index, _) {
            return SizedBox(
              height: height,
              width: width,
              child: ImageViewer(url: images[index]),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(LayoutDimens.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: images.asMap().entries.map((image) {
                return Padding(
                  padding: const EdgeInsets.all(LayoutDimens.p4),
                  child: Container(
                    width: LayoutDimens.p12,
                    height: LayoutDimens.p12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: position == image.key
                          ? CommonColors.gray700.toColor
                          : CommonColors.gray300.toColor,
                      border: Border.all(
                        width: LayoutDimens.s2,
                        color: CommonColors.gray50.toColor,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                );
              }).toList(growable: false),
            ).animate().fade(),
          ),
        ),
      ],
    );
  }
}
