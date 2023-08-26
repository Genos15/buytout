import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CartUI extends ConsumerWidget {
  const CartUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewmodel = ref.read(cartViewModelProvider.notifier);
    final cartResult = ref.watch(cartViewModelProvider);

    return RefreshableScaffold(
      header: Header.cart(
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(color: CommonColors.black900.color),
        ),
      ),
      slivers: [
        switch (cartResult) {
          (Data<Cart> data) => ProductCartList(cart: data.value),
          _ => const SizedBox.shrink().sliverBox
        },
        const SpaceDivider().sliverBox,
        // starting from here
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const AutoSizeText('Subtotal'),
            switch (cartResult) {
              Data<Cart>(value: var cart) => AutoSizeText(
                  cart.displayTotalPriceAsString(),
                ),
              _ => const SizedBox.shrink()
            },
          ],
        ).sliverBox.sp12,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const AutoSizeText('Delivery fee'),
            AutoSizeText(viewmodel.displayDeliveryPriceAsString()),
          ],
        ).sliverBox.sp12,
        const SpaceDivider().sliverBox,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            AutoSizeText('Total'),
            AutoSizeText('1050 FCFA'),
          ],
        ).sliverBox.sp12,
      ],
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SubmitButton(text: 'Check out', onPressed: () {}).p12,
        ),
      ],
    );
  }
}
