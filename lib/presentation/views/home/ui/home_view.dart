import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const HeaderFragment.home(title: Text('Home')),
          const HomeNewArrivalProductConsumerFragment.title(
            title: 'New Arrival',
          ).sliverBox.sp8,
          const HomeNewArrivalProductConsumerFragment().sliverBox,
          const HomeBestSellerProductConsumerFragment.title(
            title: 'Best Seller',
          ).sp8,
          const HomeBestSellerProductConsumerFragment().sp8,
        ],
      ),
    );
  }
}
