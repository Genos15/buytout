import 'dart:isolate';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';
import 'package:flutter/services.dart';
import 'package:graphql/client.dart';

final productRepositoryProvider =
    Provider.autoDispose<ProductRepository>((ref) {
  final db = ref.watch(databaseProvider);
  final gqlClient = ref.watch(gqlClientProvider);

  return ProductRepositoryImpl(db, gqlClient.value);
});

const kImageExtension = 'jpg';

class ProductRepositoryImpl implements ProductRepository {
  final DatabaseClient client;
  final GraphQLClient gqlClient;

  static const kPageSize = 50;
  final rootIsolateToken = RootIsolateToken.instance;

  ProductRepositoryImpl(this.client, this.gqlClient) {
    init(database: client.database);
  }

  void init({required Database? database}) async {
    if (database == null) {
      return;
    }

    try {
      final apiResult = await httpClient.get('v1/products', params: {
        'first': kPageSize,
      });

      final entries = apiResult['data'] as List;
      final imageURL = Environment.imageBaseURL;

      for (final entry in entries) {
        Isolate.run(() async {
          BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
          final productId = entry['id'];

          final images = List.generate(5, (index) {
            final position = 'image${index + 1}';
            if (entry[position] == null) {
              return null;
            }
            return {imageURL, productId, entry[position]}.join('/');
          }).map((link) {
            return link == null ? link : {link, kImageExtension}.join('.');
          });

          final product = Product.fromJson({
            ...entry,
            'runtimeType': 'output',
            'image1': images.elementAtOrNull(0),
            'image2': images.elementAtOrNull(1),
            'image3': images.elementAtOrNull(2),
            'image4': images.elementAtOrNull(3),
            'image5': images.elementAtOrNull(4),
          });
          await insert(product: product);
        });
      }
    } on Exception catch (e, s) {
      logger.e('Loading error', e, s);
    }
  }

  @override
  Future<bool> delete({required String productId}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<int> deleteAll({required List<String> productIdList}) {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future<Product> find({required String productId}) async {
    final database = client.database;
    if (database == null) {
      throw DatabaseNotReadyException();
    }
    final [entry] = await Isolate.run(() {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
      return database.query(
        kProductTableName,
        where: "id = ?",
        whereArgs: [productId],
        limit: 1,
      );
    });

    return Product.fromJson({...entry, 'runtimeType': 'output'});
  }

  @override
  Future<Iterable<Product>> findAll({
    required int first,
    String? after,
  }) async {
    final database = client.database;
    if (database == null) {
      return [];
    }

    final entries = await Isolate.run(() async {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
      return await database.query(
        kProductTableName,
        orderBy: "id",
        limit: first,
      );
    });

    return Isolate.run(() {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
      final productList = <Product>[];

      for (final entry in entries) {
        final product = Product.fromJson({...entry, 'runtimeType': 'output'});
        productList.add(product);
      }

      return productList;
    });
  }

  @override
  Future<int> insert({required Product product}) {
    final database = client.database;
    if (database == null) {
      throw DatabaseNotReadyException();
    }
    return Isolate.run(() async {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
      return await database.insert(
        kProductTableName,
        product.toJson()..remove('runtimeType'),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    });
  }

  @override
  Future<Iterable<ProdLite>> getProductByCategoryId({
    required String productCategoryId,
    required int first,
    String? after,
  }) async {
    var options = QueryOptions(
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
    var apiResult = await gqlClient.query(options);
    var nodes = ConnectionHelper.deserialize(apiResult.parsedData);
    return nodes.map((node) => ProdLite.fromJson(node));
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
      Exceptions.monitor(apiResult.exception, StackTrace.current);
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
      Exceptions.monitor(apiResult.exception, StackTrace.current);
    }

    return ProdDetails.fromJson(apiResult.parsedData);
  }
}
