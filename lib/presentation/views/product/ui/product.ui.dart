import 'package:buytout/config/index.dart';
import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductUI extends ConsumerWidget {
  final ProdLite product;

  const ProductUI({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productUiProvider = productUiVmProvider(product);
    final vmState = ref.watch(productUiProvider);

    ref.listen(
      productUiProvider,
      (_, currentState) => currentState.whenOrNull(
        error: (error, stacktrace) {
          Exceptions.propagate(context, error, stacktrace);
        },
      ),
    );

    final productDisplayPrice =
        CurrencyHelper.format(product.pricePerCurrency.xaf);

    return RefreshableScaffold(
      header: Header.product(
        title: const AutoSizeText('Detail'),
        background: _ProductUiHeader(
          vmState: vmState,
          product: product,
        ),
      ),
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(LayoutDimens.p16),
          sliver: SliverToBoxAdapter(
            child: AutoSizeText.rich(
              TextSpan(children: [
                TextSpan(
                  text: product.productNameEn,
                  style: AppTextStyles.normalBoldOf(context),
                ),
                TextSpanWidgetExtension.breaker,
                TextSpan(
                  text: productDisplayPrice,
                  style: AppTextStyles.normalOf(context),
                ),
              ]),
            ),
          ),
        ),
        // const SpaceDivider().sliverBox.sp12,
      ],
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: vmState.maybeMap(
            data: (productUiState) => _ProductUiFooter(
              product: productUiState.value.product,
            ),
            loading: (_) => const Padding(
              padding: EdgeInsets.all(LayoutDimens.p16),
              child: CircularProgressIndicator.adaptive(),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}

class _ProductUiHeader extends ConsumerWidget {
  final ProdLite product;
  final ProductUiVmState vmState;

  const _ProductUiHeader({
    required this.vmState,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageIndex = ref.watch(imageSliverVmProvider);
    final moveImageIndex =
        ref.read(imageSliverVmProvider.notifier).moveImageIndex;

    return Hero(
      tag: product.productId,
      child: AspectRatio(
        aspectRatio: LayoutDimens.ar1_1,
        child: vmState.maybeMap(
          data: (productUiState) => ImageSlider(
            images: [
              Environment.imageLink,
              Environment.imageLink,
              Environment.imageLink,
              Environment.imageLink,
            ],
            onMove: moveImageIndex,
            position: imageIndex,
          ),
          orElse: () => ImageViewer(url: Environment.imageLink),
        ),
      ),
    );
  }
}

class _ProductUiFooter extends ConsumerWidget {
  final ProdDetails product;

  const _ProductUiFooter({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productCartProvider = productCartVmProvider(product);
    final productCartVm = ref.watch(productCartProvider.notifier);
    final productCartVmState = ref.watch(productCartProvider);

    return Padding(
      padding: const EdgeInsets.all(LayoutDimens.p16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: SizedBox(
              height: LayoutDimens.s48,
              child: QuantityIndicator(
                availableQuantity: product.stockQuantity,
                iconSize: LayoutDimens.s32,
                iconColor: CommonColors.gray700.toColor,
                quantity: productCartVmState.quantity,
                onIncrement: productCartVm.increment,
                onDecrement: productCartVm.decrement,
              ),
            ),
          ),
          const SizedBox(width: LayoutDimens.s16),
          Flexible(
            flex: 3,
            child: SizedBox(
              height: LayoutDimens.s48,
              child: SubmitButton(
                text: 'Ajouter',
                onPressed: () => productCartVm.addToCart(
                  product: product,
                  quantity: productCartVmState.quantity,
                  onAuthenticateUser: () => _openLoginUi(context),
                  onError: (error, stacktrace) {
                    Exceptions.propagate(context, error, stacktrace);
                  },
                  onSuccess: () {
                    SnackBarManager.of(context).success('Le produit est dans le panier 😎');
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> _openLoginUi(BuildContext context) async {
    final isLogged = await showModalBottomSheet<bool?>(
      isScrollControlled: false,
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (context) => const LoginUi(),
    );

    return isLogged ?? false;
  }
}
