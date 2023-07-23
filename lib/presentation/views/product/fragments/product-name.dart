import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  final Product product;

  const ProductName({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        children: [
          TextSpan(text: product.name).xl.w500,
          TextSpanWidgetExtension.breaker,
          TextSpan(text: product.displayPriceAsString).lg.w500,
          TextSpanWidgetExtension.spacer,
          TextSpanWidgetExtension.spacer,
          if (product.price != product.displayPrice)
            TextSpan(text: product.priceAsString)
                .w500
                .sm
                .red500
                .lineThrough,
        ],
      ),
    );
  }
}
