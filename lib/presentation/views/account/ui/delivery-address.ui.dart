import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class DeliveryAddressUi extends StatelessWidget {
  const DeliveryAddressUi({super.key});

  @override
  Widget build(BuildContext context) {
    return const RefreshableScaffold(
      header: Header(
        bottomNavState: BottomNavState.defaultUi,
        centerTitle: true,
        title: AutoSizeText(
          'Ajouter adresse livraison',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(CommonColors.black900)),
        ),
      ),
      slivers: [],
    );
  }
}
