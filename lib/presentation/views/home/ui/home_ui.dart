import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: HeaderFragment.home(title: const Text('Home').black),
      slivers: [
        const HomeNewArrivalProductConsumerFragment.title(
          title: 'New Arrival',
        ).sliverBox.sp8,
        const HomeNewArrivalProductConsumerFragment().sliverBox,
        const HomeBestSellerProductConsumerFragment.title(
          title: 'Best Seller',
        ).sp8,
        const HomeBestSellerProductConsumerFragment().sp8,
      ],
    );
  }
}
