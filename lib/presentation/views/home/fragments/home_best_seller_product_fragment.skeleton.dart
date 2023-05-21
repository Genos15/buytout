import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeBestSellerProductFragmentSkeleton extends StatelessWidget {
  final int size;

  const HomeBestSellerProductFragmentSkeleton({Key? key, this.size = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
      crossAxisCount: 2,
      childAspectRatio: LayoutDimens.ar1_14,
      crossAxisSpacing: LayoutDimens.s4,
      children: List.generate(
        size,
        (_) => const _HomeBestSellerProductCardSkeleton(),
      ),
    );
  }
}

class _HomeBestSellerProductCardSkeleton extends StatelessWidget {
  const _HomeBestSellerProductCardSkeleton({Key? key}) : super(key: key);

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
