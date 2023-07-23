import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class SpaceDivider extends StatelessWidget {
  const SpaceDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(thickness: LayoutDimens.p0_1);
  }
}
