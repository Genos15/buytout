import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductUI extends StatelessWidget {
  final Product product;

  const ProductUI({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.product(
        title: const Text('Details Product').black,
        background: Hero(
          tag: product.id,
          child: AspectRatio(
            aspectRatio: LayoutDimens.ar1_1,
            child: Consumer(
              builder: (
                BuildContext _,
                WidgetRef ref,
                Widget? __,
              ) {
                final productState =
                    ref.watch(productViewModelProvider(product));
                final imageIndex = ref.watch(productImageViewModelProvider);
                final moveImageIndex = ref
                    .read(productImageViewModelProvider.notifier)
                    .moveImageIndex;

                return productState.product.when(
                  (value) => ImageSlider(
                    product: value,
                    moveImage: moveImageIndex,
                    currentImageIndex: imageIndex,
                  ),
                  idle: () => ImageViewer(imageUrl: product.image1),
                  loading: () => ImageViewer(imageUrl: product.image1),
                  error: (_, __) => ImageViewer(imageUrl: product.image1),
                );
              },
            ),
          ),
        ),
      ),
      slivers: [
        ProductName(product: product).sliverBox.sp12,
        Consumer(
          builder: (
            BuildContext _,
            WidgetRef ref,
            Widget? __,
          ) {
            final productState = ref.watch(productViewModelProvider(product));
            return productState.product
                .when(
                  (product) {
                    return ProductDescription(product: product)
                        .animate()
                        .fade();
                  },
                  idle: () => const SizedBox.shrink(),
                  loading: () => const ProductDescription.skeleton(),
                  error: (e, s) => const SizedBox.shrink(),
                )
                .sliverBox
                .sp12;
          },
        ),
        const SpaceDivider().sliverBox.sp12,
      ],
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: LayoutDimens.s48,
            child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final cartProvider =
                    productCartQuantityViewModelProvider(product);
                final productProvider = productViewModelProvider(product);

                final cartViewmodel = ref.watch(cartProvider.notifier);
                final cartState = ref.watch(cartProvider);
                final productState = ref.watch(productProvider);

                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 1,
                      child: QuantityIndicator(
                        availableQuantity: product.inStock,
                        iconSize: LayoutDimens.s32,
                        iconColor: CommonColors.gray700.color,
                        quantity: cartState.quantity,
                        onIncrement: cartViewmodel.increment,
                        onDecrement: cartViewmodel.decrement,
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: productState.product.when(
                        (product) => SubmitButton(
                          text: 'Add to cart',
                          onPressed: cartState.quantity == 0
                              ? null
                              : () async => await cartViewmodel.add(product),
                        ),
                        idle: () => const SubmitButton(text: 'Add to cart'),
                        loading: () => const SubmitButton(text: 'Add to cart'),
                        error: (__, _) =>
                            const SubmitButton(text: 'Add to cart'),
                      ),
                    ),
                  ],
                );
              },
            ),
          ).p12,
        ),
      ],
    );
  }
}
