import 'dart:isolate';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/services.dart';

final categoryRepositoryProvider =
    Provider.autoDispose<CategoryRepository>((ref) {
  final gqlClient = ref.watch(gqlClientProvider);

  return CategoryRepositoryImpl(gqlClient);
});

class CategoryRepositoryImpl implements CategoryRepository {
  final GraphQLClient gqlClient;

  static const kPageSize = 50;
  final rootIsolateToken = RootIsolateToken.instance;

  CategoryRepositoryImpl(this.gqlClient);

  @override
  Future<Iterable<Category>> getAllCategories({required int first, String? after}) async {
    final options = QueryOptions(
      document: getCategoriesRequest,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      parserFn: (data) => data['categories'],
      variables: {
        'first': first,
        'after': after,
        'searchText': null,
      },
    );

    final apiResult = await gqlClient.query(options);

    if (apiResult.hasException) {
      throw apiResult.exception!;
    }

    return Isolate.run(() {
      final nodes = ConnectionHelper.deserialize(apiResult.parsedData);
      final categories = nodes.map((node) => Category.fromJson(node));
      return categories;
    });
  }
}
