import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

enum _ProductCardType { preview, showcase, skeleton1, skeleton2 }

class ProductCard extends StatelessWidget {
  final Product? product;

  final _ProductCardType _type;

  const ProductCard.preview({Key? key, required this.product})
      : _type = _ProductCardType.preview,
        super(key: key);

  const ProductCard.showcase({Key? key, required this.product})
      : _type = _ProductCardType.showcase,
        super(key: key);

  const ProductCard.skeleton1({Key? key})
      : _type = _ProductCardType.skeleton1,
        product = null,
        super(key: key);

  const ProductCard.skeleton2({Key? key})
      : _type = _ProductCardType.skeleton2,
        product = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_type) {
      _ProductCardType.showcase => _ShowcaseCardAtomic(product: product!),
      _ProductCardType.preview => _PreviewCardAtomic(product: product!),
      _ProductCardType.skeleton1 => const _PreviewCardSkeleton(),
      _ProductCardType.skeleton2 => const _ShowcaseCardSkeleton(),
    };
  }
}

class _PreviewCardAtomic extends StatelessWidget {
  final Product product;

  const _PreviewCardAtomic({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details', extra: product),
      child: Card(
        elevation: LayoutDimens.e0,
        child: SizedBox(
          width: LayoutDimens.s192,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: LayoutDimens.ar16_9,
                child: ImageViewer(url: product.image1),
              ).pOnly(bottom: LayoutDimens.p4),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: product.displayPriceAsString).w500,
                    TextSpanWidgetExtension.breaker,
                    TextSpan(text: product.name).w500.sm.disable,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShowcaseCardAtomic extends StatelessWidget {
  final Product product;

  const _ShowcaseCardAtomic({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details', extra: product),
      child: Card(
        key: UniqueKey(),
        elevation: LayoutDimens.e0,
        child: SizedBox(
          width: LayoutDimens.s192,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Hero(
                tag: product.id,
                child: AspectRatio(
                  aspectRatio: LayoutDimens.ar1_1,
                  child: ImageViewer(url: product.image1),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: product.displayPriceAsString).w500,
                    TextSpanWidgetExtension.breaker,
                    TextSpan(text: product.name).w500.sm.disable,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShowcaseCardSkeleton extends StatelessWidget {
  const _ShowcaseCardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const mainColor = Color(CommonColors.red10);
    return Card(
      key: UniqueKey(),
      elevation: LayoutDimens.e0,
      child: SizedBox(
        width: LayoutDimens.s192,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: LayoutDimens.ar1_1,
              child: Container(color: mainColor),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextWidgetExtension.longTextSkeleton,
                  TextSpanWidgetExtension.breaker,
                  TextSpanWidgetExtension.gap,
                  TextWidgetExtension.shortTextSkeleton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PreviewCardSkeleton extends StatelessWidget {
  const _PreviewCardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: LayoutDimens.e0,
      child: SizedBox(
        width: LayoutDimens.s192,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: LayoutDimens.ar16_9,
              child: Container(color: CommonColors.red10.color),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextWidgetExtension.longTextSkeleton,
                  TextSpanWidgetExtension.breaker,
                  TextSpanWidgetExtension.gap,
                  TextWidgetExtension.shortTextSkeleton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
