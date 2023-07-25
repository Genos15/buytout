import 'package:buytout/shared/index.dart';
import 'package:flutter/material.dart';

class ProductSearchDelegate extends SearchDelegate<String> {
  @override
  String get searchFieldLabel => 'Rechercher sur Readige';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(CarbonIcons.close),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton.filledTonal(
      icon: const Icon(CarbonIcons.arrow_left),
      onPressed: () {
        /**
         * the second argument of the close method is the search query*/
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {

    //clear the old search list
//     searchResult.clear();
//
// //find the elements that starts with the same query letters.
// // allNames is a list that contains all your data ( you can replace it here by an http request or a query from your database )
//     searchResult =
//         allNames.where((element) => element.startsWith(query)).toList();
//
// // view a list view with the search result
//     return Container(
//       margin: EdgeInsets.all(20),
//       child: ListView(
//           padding: EdgeInsets.only(top: 8, bottom: 8),
//           scrollDirection: Axis.vertical,
//           children: List.generate(searchResult.length, (index) {
//             var item = searchResult[index];
//             return Card(
//               color: Colors.white,
//               child: Container(padding: EdgeInsets.all(16), child: Text(item)),
//             );
//           })),
//     );
//
    return const Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('buildSuggestions');
  }
}
