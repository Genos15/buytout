import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeNewArrivalProductFragment extends StatelessWidget {
  final bool _skeleton;
  final List<Product> products;

  const HomeNewArrivalProductFragment({Key? key, required this.products})
      : _skeleton = false,
        super(key: key);

  const HomeNewArrivalProductFragment.skeleton({Key? key})
      : _skeleton = true,
        products = const <Product>[],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_skeleton) {
      true => const HomeNewArrivalProductFragmentSkeleton(),
      _ => _HomeNewArrivalProductFragment(products: products),
    };
  }
}

class _HomeNewArrivalProductFragment extends StatelessWidget {
  final List<Product> products;

  const _HomeNewArrivalProductFragment({Key? key, required this.products})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: LayoutDimens.s192,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: LayoutDimens.p8),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return _HomeNewArrivalProductCard(
            key: ValueKey(product.id),
            preview: product,
          );
        },
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        addSemanticIndexes: false,
        separatorBuilder: (BuildContext context, int index) {
          return const SpacerLine.horizontal();
        },
      ),
    );
  }
}

class _HomeNewArrivalProductCard extends StatelessWidget {
  final Product preview;

  const _HomeNewArrivalProductCard({Key? key, required this.preview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details', extra: preview),
      child: Card(
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
                  aspectRatio: LayoutDimens.ar16_9,
                  child: ImageFragment(imageUrl: preview.image1),
                ).pOnly(bottom: LayoutDimens.p4),
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
