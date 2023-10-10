import 'dart:math';

import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductCartList extends StatelessWidget {
  final CurrencyDetail currencyDetail;
  final List<ShoppingCartItem> items;

  const ProductCartList({
    Key? key,
    required this.items,
    required this.currencyDetail,
  }) : super(key: key);

  @override
  Widget build(context) {
    return SliverList.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final shoppingCartItem = items.elementAt(index);

        return _ProductCartItem(
          item: shoppingCartItem,
          currencyDetail: currencyDetail,
        );
      },
      separatorBuilder: (context, index) => const SpaceDivider(),
    );
  }
}

class _ProductCartItem extends StatelessWidget {
  final ShoppingCartItem item;
  final CurrencyDetail currencyDetail;

  const _ProductCartItem({required this.item, required this.currencyDetail});

  @override
  Widget build(context) {
    final product = item.product;
    final quantity = item.quantity;
    final productXafPrice = product.pricePerCurrency.xaf;

    final productPrice = CurrencyHelper.formatByCode(
      productXafPrice,
      currencyDetail.currencyCode,
    );

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: LayoutDimens.p12,
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(LayoutDimens.s8),
        child: AspectRatio(
          aspectRatio: LayoutDimens.ar1_1,
          child: ImageViewer(url: Environment.imageLink),
        ),
      ),
      title: AutoSizeText(product.productNameEn, maxLines: 1),
      subtitle: AutoSizeText(productPrice, maxLines: 1),
      trailing: SizedBox(
        height: LayoutDimens.s36,
        width: LayoutDimens.s112,
        child: QuantityIndicator(
          availableQuantity: 8,
          iconSize: LayoutDimens.s20,
          iconColor: const Color(CommonColors.gray700),
          quantity: min(quantity, 100),
          onIncrement: () {},
          onDecrement: () {},
        ),
      ),
    );
  }
}
