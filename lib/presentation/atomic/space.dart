import 'package:buytout/shared/dimens/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Space extends StatelessWidget {
  const Space({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: Gap(LayoutDimens.p12));
  }
}
