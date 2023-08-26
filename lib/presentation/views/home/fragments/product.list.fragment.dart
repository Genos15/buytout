import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

enum _ProductListType { arrival, best }

class ProductListFragment extends StatelessWidget {
  final _ProductListType _type;

  const ProductListFragment.arrival({Key? key})
      : _type = _ProductListType.arrival,
        super(key: key);

  const ProductListFragment.best({Key? key})
      : _type = _ProductListType.best,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_type) {
      _ProductListType.best => const _BestSellerAtomic(),
      _ProductListType.arrival => const _NewArrivalAtomic(),
    };
  }
}

class _BestSellerAtomic extends StatelessWidget {
  const _BestSellerAtomic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final (loading, products) = ref.watch(homeViewModelProductsProvider);
      if (loading) {
        return SliverGrid.count(
          crossAxisCount: 2,
          childAspectRatio: LayoutDimens.ar1_14,
          crossAxisSpacing: LayoutDimens.s4,
          children: List.generate(3, (_) => const ProductCard.skeleton2()),
        );
      } else {
        return SliverGrid.builder(
          itemCount: products.length,
          addSemanticIndexes: false,
          addRepaintBoundaries: false,
          addAutomaticKeepAlives: false,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: LayoutDimens.ar1_14,
            crossAxisCount: 2,
            crossAxisSpacing: LayoutDimens.s4,
          ),
          itemBuilder: (context, index) {
            final product = products.elementAt(index);
            return ProductCard.showcase(product: product);
          },
        );
      }
    });
  }
}

class _NewArrivalAtomic extends StatelessWidget {
  const _NewArrivalAtomic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final (loading, products) = ref.watch(homeViewModelNewProductsProvider);
      final itemCount = loading ? 3 : products.length;
      return SizedBox(
        height: LayoutDimens.s192,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: LayoutDimens.p8),
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            if (loading) {
              return const ProductCard.skeleton1();
            }

            final product = products.elementAt(index);
            return ProductCard.preview(
              key: ValueKey(product.id),
              product: product,
            );
          },
          addAutomaticKeepAlives: false,
          addRepaintBoundaries: false,
          addSemanticIndexes: false,
          separatorBuilder: (BuildContext context, int index) {
            return const SpacerLine.horizontal();
          },
        ),
      );
    });
  }
}
