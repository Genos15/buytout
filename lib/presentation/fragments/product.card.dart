import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProdLite product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDisplayPrice =
        CurrencyHelper.format(product.pricePerCurrency.xaf);

    return GestureDetector(
      onTap: () => context.go('/details', extra: product),
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
                tag: product.productId,
                child: AspectRatio(
                  aspectRatio: LayoutDimens.ar1_1,
                  child: ImageViewer(url: Environment.imageLink),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: LayoutDimens.s4),
                child: AutoSizeText.rich(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: productDisplayPrice,
                        style: AppTextStyles.normalBoldOf(context),
                      ),
                      TextSpanWidgetExtension.breaker,
                      TextSpan(
                        text: product.productNameEn,
                        style: AppTextStyles.smallOf(context),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
