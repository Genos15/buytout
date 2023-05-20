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
      childAspectRatio: CardDimens.kBestSellerProductCardAspectRatio,
      children: List.generate(
        size,
        (_) => const _HomeBestSellerProductCardSkeleton(),
      ),
    );
  }
}

class _HomeBestSellerProductCardSkeleton extends StatelessWidget {
  static const _kTextHeight = 15.0;
  static const _kTextShortWidth = 80.0;
  static const _kTextLongWidth = 120.0;

  const _HomeBestSellerProductCardSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: UniqueKey(),
      elevation: CardDimens.kProductCardElevation,
      child: SizedBox(
        width: CardDimens.kProductCardWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: CardDimens.kBestSellerProductImageAspectRatio,
              child: Container(color: const Color(CardColors.kSkeleton)),
            ),
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: SizedBox(
                      height: _kTextHeight,
                      width: _kTextLongWidth,
                      child: Container(
                        color: const Color(CardColors.kSkeleton),
                      ),
                    ),
                  ),
                  const TextSpan(text: '\n'),
                  const WidgetSpan(
                      child: SizedBox(height: CardDimens.kProductCardGap)),
                  WidgetSpan(
                    child: SizedBox(
                      height: _kTextHeight,
                      width: _kTextShortWidth,
                      child: Container(
                        color: const Color(CardColors.kSkeleton),
                      ),
                    ),
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
