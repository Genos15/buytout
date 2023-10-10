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
      background: CommonColors.white,
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
            SliverToBoxAdapter(
              child: _CartResumeBanner(
                productCount: vm.items.length,
                amount: vm.productTotalAmount,
              ),
            ),
            ProductCartList(items: vm.items, currencyDetail: vm.currencyDetail),
            const SliverToBoxAdapter(child: SizedBox(height: LayoutDimens.s96)),
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
      overlays: [
        if (cartUiVmState.hasValue)
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(LayoutDimens.p12),
              decoration: const BoxDecoration(
                color: Color(CommonColors.white),
                border: Border(
                  top: BorderSide(
                    color: Color(CommonColors.gray20_carbon),
                    width: _kDividerWidth,
                  ),
                ),
              ),
              child: TextSubmitButton(
                text: 'Confirmer la commande',
                onPressed: () {
                  vm.goToOrderSummaryPage((statement) {
                    context.go('/order-summary', extra: statement);
                  });
                },
              ),
            ),
          )
      ],
    );
  }
}

const _kDividerWidth = 0.5;

class _CartResumeBanner extends StatelessWidget {
  final int productCount;
  final String amount;

  const _CartResumeBanner({required this.productCount, required this.amount});

  @override
  Widget build(BuildContext context) {
    final small = AppTextStyles.smallOf(context);
    return Container(
      padding: const EdgeInsets.all(LayoutDimens.p12),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(CommonColors.gray20_carbon),
            width: _kDividerWidth,
          ),
          bottom: BorderSide(
            color: Color(CommonColors.gray20_carbon),
            width: _kDividerWidth,
          ),
        ),
      ),
      child: Center(
        child: AutoSizeText.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$productCount Articles: Total (hors livraison)',
                style: small,
              ),
              TextSpan(text: ' • ', style: small),
              TextSpan(
                text: amount,
                style: small.copyWith(
                  color: const Color(CommonColors.gray100_carbon),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
