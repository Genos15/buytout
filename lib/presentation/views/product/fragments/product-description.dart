import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final Product? product;
  final bool skeleton;

  const ProductDescription({Key? key, required this.product})
      : skeleton = false,
        super(key: key);

  const ProductDescription.skeleton({Key? key})
      : skeleton = true,
        product = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(product is ProductOutput?);
    final product_ = product as ProductOutput?;
    return switch (skeleton) {
      true => const _ProductDescriptionSkeleton(),
      _ when product_ != null => Text.rich(
          maxLines: 7,
          overflow: TextOverflow.fade,
          TextSpan(
            children: [
              TextSpan(text: product_.description),
              // TextSpanWidgetExtension.breaker,
            ],
          ),
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

class _ProductDescriptionSkeleton extends StatelessWidget {
  const _ProductDescriptionSkeleton({Key? key}) : super(key: key);

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
