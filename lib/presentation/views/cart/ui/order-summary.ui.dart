import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/cupertino.dart';

class OrderSummaryUi extends StatelessWidget {
  final OrderStatement statement;

  const OrderSummaryUi({super.key, required this.statement});

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: const Header(
        bottomNavState: BottomNavState.defaultUi,
        centerTitle: true,
        title: AutoSizeText(
          'Résumé de la commande',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [
        const SliverToBoxAdapter(child: AutoSizeText('Panier recap')),
        const SliverToBoxAdapter(child: AutoSizeText('Adresse de livraison')),
        SliverToBoxAdapter(child: OrderSummaryFooter(statement: statement))
      ],
    );
  }
}
