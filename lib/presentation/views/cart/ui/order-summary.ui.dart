import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class OrderSummaryUi extends StatelessWidget {
  final OrderStatement statement;

  const OrderSummaryUi({super.key, required this.statement});

  @override
  Widget build(BuildContext context) {
    return const RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.defaultUi,
        centerTitle: true,
        title: AutoSizeText(
          'Order Summary',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [
        SliverToBoxAdapter(
          child: AutoSizeText('Summary of Order'),
        )
      ],
    );
  }
}
