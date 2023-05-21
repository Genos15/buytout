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
      true => const HomeNewArrivalProductFragmentSkeleton(),
      _ => _HomeNewArrivalProductFragment(products: products),
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
            product: product,
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
  final ProductPreview product;

  const _HomeNewArrivalProductCard({Key? key, required this.product})
      : super(key: key);

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
              child: Container(color: const Color(CommonColors.red10)),
            ).pOnly(bottom: LayoutDimens.p4),
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
