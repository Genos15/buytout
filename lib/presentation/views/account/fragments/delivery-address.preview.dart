import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class DeliveryAddressPreview extends StatelessWidget {
  const DeliveryAddressPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Flexible(child: Icon(CarbonIcons.home)),
            Flexible(child: AutoSizeText('LIVRAISON A DOMICILE')),
            Flexible(child: AutoSizeText('MODIFIER')),
          ],
        )
      ],
    );
  }
}
