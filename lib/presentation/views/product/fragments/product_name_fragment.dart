import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductNameFragment extends StatelessWidget {
  final ProductPreview productPreview;

  const ProductNameFragment({Key? key, required this.productPreview})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(
      TextSpan(
        children: [
          TextSpan(text: productPreview.name).xl.w500,
          TextSpanWidgetExtension.breaker,
          TextSpan(text: productPreview.categoryPreview.name).w600.gray500.sm,
          TextSpanWidgetExtension.breaker,
          TextSpan(text: productPreview.displayPriceAsString).lg.w500,
          TextSpanWidgetExtension.spacer,
          TextSpanWidgetExtension.spacer,
          if (productPreview.price != productPreview.displayPrice)
            TextSpan(text: productPreview.priceAsString)
                .w500
                .sm
                .red500
                .lineThrough,
        ],
      ),
    );
  }
}
