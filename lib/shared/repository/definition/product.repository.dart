import 'package:buytout/shared/index.dart';

abstract interface class ProductRepo {
  Future<int> insert({required Product product});

  Future<Product> find({required String productId});

  Future<Iterable<Product>> findAll({required int first, String? after});

  Future<bool> delete({required String productId});

  Future<int> deleteAll({required List<String> productIdList});
}
