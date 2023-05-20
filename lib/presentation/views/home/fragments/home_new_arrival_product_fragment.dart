import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeNewArrivalProductFragment extends StatelessWidget {
  final bool _skeleton;
  final List<ProductPreview> products;

  const HomeNewArrivalProductFragment({Key? key, required this.products})
      : _skeleton = false,
        super(key: key);

  const HomeNewArrivalProductFragment.skeleton({Key? key})
      : _skeleton = true,
        products = const <ProductPreview>[],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_skeleton) {
      true => const HomeNewArrivalProductFragmentSkeleton().sliverBox,
      _ => _HomeNewArrivalProductFragment(products: products).sliverBox,
    };
  }
}

class _HomeNewArrivalProductFragment extends StatelessWidget {
  final List<ProductPreview> products;

  const _HomeNewArrivalProductFragment({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CardDimens.kProductCardHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return _HomeNewArrivalProductCard(
            key: ValueKey(product.id),
            product: product,
          );
        },
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
      ),
    );
  }
}

class _HomeNewArrivalProductCard extends StatelessWidget {
  final ProductPreview product;

  const _HomeNewArrivalProductCard({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: CardDimens.kProductCardElevation,
      child: SizedBox(
        width: CardDimens.kProductCardWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: CardDimens.kProductImageAspectRatio,
              child: Container(
                color: const Color(CardColors.kImagePlaceholder),
              ),
            ).withPaddingOnly(bottom: CardDimens.kProductCardGap),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const TextSpan(text: '\n'),
                  const WidgetSpan(
                      child: SizedBox(height: CardDimens.kProductCardGap)),
                  TextSpan(text: product.categoryPreview.name),
                  const TextSpan(text: '\n'),
                  const WidgetSpan(
                      child: SizedBox(height: CardDimens.kProductCardGap)),
                  TextSpan(
                    text: product.displayPrice.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
