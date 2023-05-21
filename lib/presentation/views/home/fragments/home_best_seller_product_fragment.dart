import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeBestSellerProductFragment extends StatelessWidget {
  final bool _skeleton;
  final List<ProductPreview> products;

  const HomeBestSellerProductFragment({Key? key, required this.products})
      : _skeleton = false,
        super(key: key);

  const HomeBestSellerProductFragment.skeleton({Key? key})
      : _skeleton = true,
        products = const <ProductPreview>[],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_skeleton) {
      true => const HomeBestSellerProductFragmentSkeleton(),
      _ => _HomeBestSellerProductFragment(products: products),
    };
  }
}

class _HomeBestSellerProductFragment extends StatelessWidget {
  final List<ProductPreview> products;

  const _HomeBestSellerProductFragment({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: products.length,
      addSemanticIndexes: false,
      addRepaintBoundaries: false,
      addAutomaticKeepAlives: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: LayoutDimens.ar1_14,
        crossAxisCount: 2,
        crossAxisSpacing: LayoutDimens.s4,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return _HomeBestSellerProductCard(product: product);
      },
    );
  }
}

class _HomeBestSellerProductCard extends StatelessWidget {
  final ProductPreview product;

  const _HomeBestSellerProductCard({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              child: Container(color: const Color(CommonColors.red10)),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: product.name).w500.lg,
                  TextSpanWidgetExtension.breaker,
                  TextSpanWidgetExtension.gap,
                  TextSpan(text: product.categoryPreview.name),
                  TextSpanWidgetExtension.breaker,
                  TextSpanWidgetExtension.gap,
                  TextSpan(text: product.displayPriceAsString).w500,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
