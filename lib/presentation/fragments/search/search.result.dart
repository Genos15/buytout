import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final String input;

  const SearchResult({super.key, required this.input});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.all(8.0),
          sliver: SliverToBoxAdapter(child: Text('buildResults')),
        ),
      ],
    );
  }
}
