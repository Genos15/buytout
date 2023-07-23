import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductImageSliderFragment extends ConsumerWidget {
  final Product product;
  final void Function(int) moveImage;
  final int currentImageIndex;

  const ProductImageSliderFragment({
    Key? key,
    required this.product,
    required this.moveImage,
    required this.currentImageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    assert(product is ProductOutput);
    final product_ = product as ProductOutput;

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final imageLinks = [
      product_.image1,
      product_.image2,
      product_.image3,
      product_.image4,
      product_.image5,
    ].nonNulls;

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: imageLinks.length,
          options: CarouselOptions(
            height: height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) => moveImage(index),
          ),
          itemBuilder: (context, index, _) {
            return SizedBox(
              height: height,
              width: width,
              child: ImageFragment(imageUrl: imageLinks.elementAt(index)),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageLinks.toList().asMap().entries.map((image) {
              return Container(
                width: LayoutDimens.p12,
                height: LayoutDimens.p12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentImageIndex == image.key
                      ? CommonColors.gray700.color
                      : CommonColors.gray300.color,
                  border: Border.all(
                    width: LayoutDimens.s2,
                    color: CommonColors.gray50.color,
                    style: BorderStyle.solid,
                  ),
                ),
              ).p4;
            }).toList(growable: false),
          ).p16.animate().fade(),
        ),
      ],
    );
  }
}
