import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

const _fakeProductPreview = ProductPreview(
  id: 'id-product',
  name: 'Thintwice product name',
  categoryPreview: ProductCategoryPreview(
    id: 'id-category',
    name: 'Fake Category\'s name',
  ),
  displayPrice: 900,
  displayPriceAsString: '900 FCFA',
  price: 1000,
  priceAsString: '1000 FCFA',
  currency: 'XOF',
  imageUrl:
      'https://shoeslikepottery.com/en/pls-en/wp-content/uploads/2021/06/low-w-2-1200x796.jpg',
  percentage: 10,
  isFavorite: false,
);

class ProductUI extends ConsumerWidget {
  final ProductPreview productPreview;

  const ProductUI({Key? key, this.productPreview = _fakeProductPreview})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(productViewModelProvider(productPreview));

    return RefreshableScaffold(
      header: HeaderFragment.product(
        title: const Text('Details Product').black,
        background: AspectRatio(
          aspectRatio: LayoutDimens.ar1_1,
          child: vm.when(
            data: (s) => ProductImageSliderFragment(product: s.product),
            error: (_, s) => ImageFragment(imageUrl: productPreview.imageUrl),
            loading: () => ImageFragment(imageUrl: productPreview.imageUrl),
          ),
        ),
      ),
      slivers: [
        ProductNameFragment(productPreview: productPreview).sliverBox.sp12,
        vm
            .when(
              data: (state) => ProductDescriptionFragment(
                product: state.product,
              ).animate().fade(),
              error: (e, s) => const SizedBox.shrink(),
              loading: () => const ProductDescriptionFragment.skeleton(),
            )
            .sliverBox
            .sp12,
        const Divider(thickness: LayoutDimens.p0_1).sliverBox.sp12,
      ],
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: LayoutDimens.s48,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: ProductCartQuantityIndicatorFragment(
                    availableQuantity: 8,
                    iconSize: LayoutDimens.s32,
                    iconColor: CommonColors.gray700.asColor,
                    onChange: (quantity) {
                      developer.log('the new quantity = $quantity');
                    },
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: SubmitButton(text: 'Add to cart', onPressed: () {}),
                ),
              ],
            ),
          ).p12,
        ),
      ],
    );
  }
}
