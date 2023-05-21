import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeBestSellerProductConsumerFragment extends StatelessWidget {
  final bool _title;
  final String title;

  const HomeBestSellerProductConsumerFragment({Key? key})
      : _title = false,
        title = '',
        super(key: key);

  const HomeBestSellerProductConsumerFragment.title(
      {Key? key, required this.title})
      : _title = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_title) {
      true => _HomeBestSellerProductTitle(title: title).sliverBox,
      _ => const _HomeBestSellerProductList()
    };
  }
}

class _HomeBestSellerProductTitle extends StatelessWidget {
  final String title;
  const _HomeBestSellerProductTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final (loading, products) =
          ref.watch(homeViewModelProductsProvider);
      if (!loading && products.isEmpty) {
        return const SizedBox.shrink();
      } else {
        return Text(title);
      }
    });
  }
}

class _HomeBestSellerProductList extends StatelessWidget {
  const _HomeBestSellerProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final (loading, products) =
          ref.watch(homeViewModelProductsProvider);
      if (loading) {
        return const HomeBestSellerProductFragment.skeleton();
      } else {
        return HomeBestSellerProductFragment(products: products.toList());
      }
    });
  }
}
