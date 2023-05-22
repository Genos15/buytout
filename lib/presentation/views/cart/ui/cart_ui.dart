import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class CartUI extends ConsumerWidget {
  final Map<int, Product> products;

  const CartUI({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshableScaffold(
      header: HeaderFragment.home(title: const Text('My Cart').black),
      slivers: [
        const Text('List').sliverBox.sp12,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [Text('Subtotal'), Text('800 FCFA')],
        ).sliverBox.sp12,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [Text('Delivery fee'), Text('250 FCFA')],
        ).sliverBox.sp12,
        const Divider(thickness: LayoutDimens.p0_1).sliverBox.sp12,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [Text('Total'), Text('1050 FCFA')],
        ).sliverBox.sp12,
      ],
      overlays: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SubmitButton(text: 'Check out', onPressed: () {}).p12,
        ),
      ],
    );
  }
}
