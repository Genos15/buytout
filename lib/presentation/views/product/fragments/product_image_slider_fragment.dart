import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductImageSliderFragment extends ConsumerWidget {
  final Product product;

  const ProductImageSliderFragment({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewmodel = ref.watch(productImageViewModelProvider.notifier);
    final viewmodelState = ref.watch(productImageViewModelProvider);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final imageLinks = [
      product.image1,
      product.image2,
      product.image3,
      product.image4,
      product.image5,
    ];

    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: imageLinks.length,
          options: CarouselOptions(
            height: height,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) => viewmodel.move(index),
          ),
          itemBuilder: (context, index, _) {
            return SizedBox(
              height: height,
              width: width,
              child: ImageFragment(imageUrl: imageLinks[index]),
            );
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageLinks.asMap().entries.map((image) {
              return Container(
                width: LayoutDimens.p12,
                height: LayoutDimens.p12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: viewmodelState == image.key
                      ? CommonColors.gray700.asColor
                      : CommonColors.gray300.asColor,
                  border: Border.all(
                    width: LayoutDimens.s2,
                    color: CommonColors.gray50.asColor,
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
