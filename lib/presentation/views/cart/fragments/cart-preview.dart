import 'dart:math';
import 'dart:ui';

import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

const kDefaultVisible = 4;
const kDefaultTotalElement = 5;

class CartPreview extends StatelessWidget {
  final OrderStatement statement;
  final int background;

  const CartPreview({
    super.key,
    required this.statement,
    this.background = CommonColors.white,
  });

  @override
  Widget build(BuildContext context) {
    final products = statement.products;

    final elements = List<Widget>.filled(
      kDefaultTotalElement,
      const SizedBox.shrink(),
      growable: false,
    );

    final numberElementVisible = min(kDefaultVisible, products.length);

    for (var i = 0; i < numberElementVisible; i++) {
      final element = _CartProductAtomic(
        currentIndex: i,
        numberOfItemsVisible: kDefaultVisible,
        totalCount: products.length,
      );

      elements[i] = element;
    }

    return Container(
      padding: const EdgeInsets.all(LayoutDimens.p12),
      decoration: BoxDecoration(color: Color(background)),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [AutoSizeText('MON PANIER'), AutoSizeText('Voir')],
          ),
          const SizedBox(height: LayoutDimens.p12),
          Row(
            children: [
              for (final element in elements) Flexible(child: element),
            ],
          ),
        ],
      ),
    );
  }
}

class _CartProductAtomic extends StatelessWidget {
  final int currentIndex;
  final int numberOfItemsVisible;
  final int totalCount;

  const _CartProductAtomic({
    super.key,
    required this.currentIndex,
    required this.numberOfItemsVisible,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    final endIndex = numberOfItemsVisible - 1;

    if (currentIndex < endIndex || totalCount <= numberOfItemsVisible) {
      return const Padding(
        padding: EdgeInsets.only(right: LayoutDimens.p8),
        child: AspectRatio(
          aspectRatio: LayoutDimens.ar1_14,
          child: Placeholder(),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(right: LayoutDimens.p8),
      child: AspectRatio(
        aspectRatio: LayoutDimens.ar1_14,
        child: ClipRRect(
          // make sure we apply clip it properly
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey.withOpacity(0.1),
              child: const Text(
                "+2",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
