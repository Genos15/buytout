import 'package:buytout/presentation/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class SearchSuggestion extends StatelessWidget {
  final String input;

  const SearchSuggestion({super.key, required this.input});

  @override
  Widget build(BuildContext context) {
    // display recent search content
    // display suggestions
    return CustomScrollView(
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.all(LayoutDimens.p8),
          sliver: SliverToBoxAdapter(
            child: TextTitle2('Recent'),
          ),
        ),
        SliverList.separated(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return SearchInlineListItem(
              title: 'title $index',
              category: 'category $index',
            );
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SpaceDivider(),
        ),
        const SliverPadding(
          padding: EdgeInsets.all(LayoutDimens.p8),
          sliver: SliverToBoxAdapter(
            child: TextTitle2('Product you might like'),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(LayoutDimens.p8),
          sliver: SliverGrid.count(
            crossAxisCount: 2,
            childAspectRatio: LayoutDimens.ar1_14,
            crossAxisSpacing: LayoutDimens.s4,
            children: List.generate(3, (_) => const ProductCard.skeleton2()),
          ),
        ),
      ],
    );
  }
}
