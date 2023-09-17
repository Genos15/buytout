import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CartUI extends ConsumerWidget {
  const CartUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final viewmodel = ref.read(cartViewModelProvider.notifier);
    final cartUiVmState = ref.watch(cartUiVmProvider);

    return RefreshableScaffold(
      header: Header.cart(
        title: Text(
          'Cart',
          textAlign: TextAlign.center,
          style: TextStyle(color: CommonColors.black900.toColor),
        ),
      ),
      slivers: switch (cartUiVmState) {
        AsyncData(requireValue: final cartUiState) => [
            // switch (cartResult) {
            //   (Data<Cart> data) => ProductCartList(cart: data.value),
            //   _ => const SizedBox.shrink().sliverBox
            // },
            // starting from here
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     const AutoSizeText('Subtotal'),
            //     switch (cartResult) {
            //       Data<Cart>(value: var cart) => AutoSizeText(
            //           cart.displayTotalPriceAsString(),
            //         ),
            //       _ => const SizedBox.shrink()
            //     },
            //   ],
            // ).sliverBox.sp12,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     const AutoSizeText('Delivery fee'),
            //     AutoSizeText(viewmodel.displayDeliveryPriceAsString()),
            //   ],
            // ).sliverBox.sp12,
            // const SpaceDivider().sliverBox,
            SliverPadding(
              padding: const EdgeInsets.all(LayoutDimens.p12),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const AutoSizeText('Total'),
                    AutoSizeText(cartUiState.cart.totalAmount.toString()),
                  ],
                ),
              ),
            ),
          ],
        AsyncLoading() => [_CartUILoading()],
        _ => [_CartUIEmpty()],
      },
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SubmitButton(text: 'Commander', onPressed: () {}).p12,
        ),
      ],
    );
  }
}

class _CartUILoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class _CartUIEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Center(
        child: AutoSizeText(
          "Votre panier est vide",
          style: AppTextStyles.normalOf(context),
        ),
      ),
    );
  }
}
