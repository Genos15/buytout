import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeNewArrivalProductConsumerFragment extends StatelessWidget {
  final bool _title;
  final String title;

  const HomeNewArrivalProductConsumerFragment({Key? key})
      : _title = false,
        title = '',
        super(key: key);

  const HomeNewArrivalProductConsumerFragment.title(
      {Key? key, required this.title})
      : _title = true,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return switch (_title) {
      true => _HomeNewArrivalProductTitle(title: title),
      _ => const _HomeNewArrivalProductList()
    };
  }
}

class _HomeNewArrivalProductTitle extends StatelessWidget {
  final String title;

  const _HomeNewArrivalProductTitle({Key? key, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final (loading, _) = ref.watch(homeViewModelNewProductsProvider);
      if (!loading) {
        return const SizedBox.shrink();
      } else {
        return AutoSizeText(title);
      }
    });
  }
}

class _HomeNewArrivalProductList extends StatelessWidget {
  const _HomeNewArrivalProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final (loading, products) = ref.watch(homeViewModelNewProductsProvider);
      if (loading) {
        return const HomeNewArrivalProductFragment.skeleton();
      } else {
        return HomeNewArrivalProductFragment(products: products.toList());
      }
    });
  }
}
