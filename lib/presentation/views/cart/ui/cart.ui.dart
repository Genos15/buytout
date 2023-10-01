import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CartUi extends ConsumerWidget {
  const CartUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(cartUiVmProvider.notifier);
    final cartUiVmState = ref.watch(cartUiVmProvider);

    return RefreshableScaffold(
      onRefresh: () async {
        vm.fetchCurrentCart();
      },
      header: const Header(
        bottomNavState: BottomNavState.cart,
        centerTitle: true,
        title: AutoSizeText(
          'Mon panier',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: switch (cartUiVmState) {
        AsyncData() => [
            ProductCartList(items: vm.items, currencyDetail: vm.currencyDetail),
            SliverPadding(
              padding: const EdgeInsets.all(LayoutDimens.p12),
              sliver: SliverToBoxAdapter(
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        const AutoSizeText('Sous-total'),
                        AutoSizeText(
                          vm.productTotalAmount,
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    getSpaceBetween(),
                    TableRow(
                      children: [
                        const AutoSizeText('Frais de service'),
                        AutoSizeText(vm.serviceFee, textAlign: TextAlign.end),
                      ],
                    ),
                    getSpaceBetween(),
                    TableRow(
                      children: [
                        const AutoSizeText('Frais de livraison'),
                        AutoSizeText(vm.deliveryFee, textAlign: TextAlign.end),
                      ],
                    ),
                    getSpaceBetween(),
                    TableRow(
                      children: [
                        const AutoSizeText('Total'),
                        AutoSizeText(vm.totalAmount, textAlign: TextAlign.end),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(LayoutDimens.p12),
              sliver: SliverToBoxAdapter(
                child: SubmitButton(
                  text: 'Commander',
                  onPressed: () {
                    vm.goToOrderSummaryPage((statement) {
                      context.go('/order-summary', extra: statement);
                    });
                  },
                ),
              ),
            )
          ],
        AsyncLoading() => [
            const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
          ],
        _ => [
            SliverFillRemaining(
              child: Center(
                child: AutoSizeText(
                  "Votre panier est vide",
                  style: AppTextStyles.normalOf(context),
                ),
              ),
            ),
          ],
      },
    );
  }

  TableRow getSpaceBetween() => const TableRow(
        children: <Widget>[
          SizedBox(height: LayoutDimens.s12),
          SizedBox(height: LayoutDimens.s12),
        ],
      );
}
