import 'dart:isolate';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/services.dart';

final productRepositoryProvider =
    Provider.autoDispose<ProductRepository>((ref) {
  final gqlClient = ref.watch(gqlClientProvider);

  return ProductRepositoryImpl(gqlClient);
});

class ProductRepositoryImpl implements ProductRepository {
  final GraphQLClient gqlClient;

  static const kPageSize = 50;
  final rootIsolateToken = RootIsolateToken.instance;

  ProductRepositoryImpl(this.gqlClient);

  @override
  Future<Iterable<ProdLite>> getProductByCategoryId({
    required String productCategoryId,
    required int first,
    String? after,
  }) async {
    final options = QueryOptions(
      document: categoryProductRequest,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      parserFn: (data) => data['categoryProducts'],
      variables: {
        'categoryId': productCategoryId,
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
      final products = nodes.map((node) => ProdLite.fromJson(node));
      return products;
    });
  }

  @override
  Future<int> getTotalProductCount({required String productCategoryId}) async {
    var options = QueryOptions(
      document: categoryProductCountRequest,
      fetchPolicy: FetchPolicy.noCache,
      cacheRereadPolicy: CacheRereadPolicy.ignoreAll,
      optimisticResult: true,
      parserFn: (data) => data['category'],
      variables: {
        'categoryId': productCategoryId,
      },
    );

    var apiResult = await gqlClient.query(options);

    if (apiResult.hasException) {
      // throw apiResult.exception!;
    }

    return 91;
  }

  @override
  Future<ProdDetails> getProductById({required String productId}) async {
    var options = QueryOptions(
      document: productRequest,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      parserFn: (data) => data['product'],
      variables: {
        'productId': productId,
      },
    );

    var apiResult = await gqlClient.query(options);

    if (apiResult.hasException) {
      throw apiResult.exception!;
    }

    return Isolate.run(() => ProdDetails.fromJson(apiResult.parsedData));
  }
}
