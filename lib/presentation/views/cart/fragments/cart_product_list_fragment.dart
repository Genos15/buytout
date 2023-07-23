import 'dart:math';

import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CartProductListFragment extends StatelessWidget {
  final Cart cart;

  const CartProductListFragment({Key? key, required this.cart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemCount = cart.products.length;
    return SliverList.separated(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        final productList = cart.products.entries.elementAt(index);
        final (quantity, product) = productList.value;

        return Card(
          margin: EdgeInsets.zero,
          elevation: LayoutDimens.s0,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: LayoutDimens.p12,
            ),
            // isThreeLine: true,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                aspectRatio: LayoutDimens.ar1_1,
                child: ImageFragment(imageUrl: product.image1),
              ),
            ),
            title: AutoSizeText(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: switch (product) {
                ProductOutput(:final description) => [
                    AutoSizeText(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    AutoSizeText(
                      product.displayPriceAsString,
                      maxLines: 1,
                    ),
                  ],
                ProductInput() => [],
              },
            ),
            trailing: SizedBox(
              height: LayoutDimens.s36,
              width: LayoutDimens.s112,
              child: ProductCartQuantityIndicatorFragment(
                availableQuantity: 8,
                iconSize: LayoutDimens.s24,
                iconColor: CommonColors.gray700.color,
                quantity: min(quantity, 100),
                onIncrement: () {},
                onDecrement: () {},
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          const SpaceDivider(),
    );
  }
}
