import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductDescriptionFragment extends StatelessWidget {
  final Product? product;
  final bool skeleton;

  const ProductDescriptionFragment({Key? key, required this.product})
      : skeleton = false,
        super(key: key);

  const ProductDescriptionFragment.skeleton({Key? key})
      : skeleton = true,
        product = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (skeleton) {
      true => const _ProductDescriptionFragmentSkeleton(),
      _ when product != null => Text.rich(
          maxLines: 7,
          overflow: TextOverflow.fade,
          TextSpan(
            children: [
              TextSpan(text: product!.description),
              // TextSpanWidgetExtension.breaker,
            ],
          ),
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

class _ProductDescriptionFragmentSkeleton extends StatelessWidget {
  const _ProductDescriptionFragmentSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextWidgetExtension.longTextSkeleton,
          TextSpanWidgetExtension.breaker,
          TextSpanWidgetExtension.gap,
          TextWidgetExtension.shortTextSkeleton,
        ],
      ),
    );
  }
}
