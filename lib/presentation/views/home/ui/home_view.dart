import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SafeArea(
              child: SizedBox.shrink(),
            ),
          ),
          Consumer(builder: (context, ref, _) {
            final (loading, products) =
                ref.watch(homeViewModelArrivalProductsProvider);
            if (!loading && products.isEmpty) {
              return const SizedBox.shrink().sliverBox;
            } else {
              return const Text('New Arrival').sliverBox;
            }
          }),
          Consumer(builder: (context, ref, _) {
            final (loading, products) =
                ref.watch(homeViewModelArrivalProductsProvider);
            if (loading) {
              return const HomeNewArrivalProductFragment.skeleton();
            } else {
              return HomeNewArrivalProductFragment(products: products.toList());
            }
          }),
          Consumer(builder: (context, ref, _) {
            final (loading, products) =
                ref.watch(homeViewModelProductsProvider);
            if (!loading && products.isEmpty) {
              return const SizedBox.shrink().sliverBox;
            } else {
              return const Text('Best Seller').sliverBox;
            }
          }),
          Consumer(builder: (context, ref, _) {
            final (loading, products) =
                ref.watch(homeViewModelProductsProvider);
            if (loading) {
              return const HomeBestSellerProductFragment.skeleton();
            } else {
              return const HomeBestSellerProductFragment.skeleton();
            }
          }),
        ],
      ),
    );
  }
}
