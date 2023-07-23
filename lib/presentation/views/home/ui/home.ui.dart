import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshableScaffold(
      header: Header.home(
        title: TextTitle1(
          'Showcase',
          textAlign: TextAlign.start,
          style: TextStyle(color: CommonColors.black900.color),
        ),
      ),
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.all(LayoutDimens.p8),
          sliver: SliverToBoxAdapter(
            child: SectionSeparator(
              title: 'Popular',
              subtitle: 'Most paid product of the community',
            ),
          ),
        ),
        const ProductListFragment.arrival().sliverBox,
        const SliverPadding(
          padding: EdgeInsets.all(LayoutDimens.p8),
          sliver: SliverToBoxAdapter(
            child: SectionSeparator(
              title: 'Suggested for you',
              subtitle: 'Based on area interests',
            ),
          ),
        ),
        const ProductListFragment.best().sp8,
      ],
    );
  }
}
