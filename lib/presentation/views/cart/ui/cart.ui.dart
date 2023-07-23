import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CartUI extends ConsumerWidget {
  const CartUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        cartResult.when(
          (cart) => ProductCartList(cart: cart),
          idle: () => const SizedBox.shrink().sliverBox,
          loading: () => const SizedBox.shrink().sliverBox,
          error: (e, s) => const SizedBox.shrink().sliverBox,
        ),
        const SpaceDivider().sliverBox,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [Text('Subtotal'), Text('800 FCFA')],
        ).sliverBox.sp12,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [Text('Delivery fee'), Text('250 FCFA')],
        ).sliverBox.sp12,
        const SpaceDivider().sliverBox,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [Text('Total'), Text('1050 FCFA')],
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
