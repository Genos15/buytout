import 'dart:isolate';

import 'package:buytout/shared/index.dart';
import 'package:flutter/services.dart';

final productRepoProvider = Provider.autoDispose<ProductRepo>((ref) {
  final db = ref.watch(databaseProvider);
  return ProductRepoImpl(db);
});

class ProductRepoImpl implements ProductRepo {
  final DatabaseClient client;
  static const kPageSize = 50;
  final rootIsolateToken = RootIsolateToken.instance;

  ProductRepoImpl(this.client) {
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
      for (final entry in entries) {
        Isolate.run(() async {
          BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
          final product = Product.fromJson({...entry, 'runtimeType': 'output'});
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
    final [entry] = await database.query(
      kProductTableName,
      where: "id = ?",
      whereArgs: [productId],
      limit: 1,
    );

    return Isolate.run(() async {
      BackgroundIsolateBinaryMessenger.ensureInitialized(rootIsolateToken!);
      return Product.fromJson({...entry, 'runtimeType': 'output'});
    });
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
}
