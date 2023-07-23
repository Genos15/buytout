import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeBestSellerProductFragment extends StatelessWidget {
  final bool _skeleton;
  final List<Product> products;

  const HomeBestSellerProductFragment({Key? key, required this.products})
      : _skeleton = false,
        super(key: key);

  const HomeBestSellerProductFragment.skeleton({Key? key})
      : _skeleton = true,
        products = const <Product>[],
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
  final List<Product> products;

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
        return _HomeBestSellerProductCard(preview: product);
      },
    );
  }
}

class _HomeBestSellerProductCard extends StatelessWidget {
  final Product preview;

  const _HomeBestSellerProductCard({Key? key, required this.preview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details', extra: preview),
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
                tag: preview.id,
                child: AspectRatio(
                  aspectRatio: LayoutDimens.ar1_1,
                  child: ImageFragment(imageUrl: preview.image1),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: preview.displayPriceAsString).w500,
                    TextSpanWidgetExtension.breaker,
                    TextSpan(text: preview.name).w500.sm.disable,
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
