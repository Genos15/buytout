import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductImageSliderFragment extends StatelessWidget {
  final Product product;

  const ProductImageSliderFragment({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AspectRatio(
      aspectRatio: LayoutDimens.ar1_1,
      child: Placeholder(),
    );
  }
}
