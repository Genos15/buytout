import 'package:buytout/shared/index.dart';

abstract interface class ProductRepository {
  Future<int> insert({required Product product});

  Future<Product> find({required String productId});

  Future<Iterable<Product>> findAll({required int first, String? after});

  Future<bool> delete({required String productId});

  Future<int> deleteAll({required List<String> productIdList});

  Future<Iterable<ProdLite>> getProductByCategoryId({
    required String productCategoryId,
    required int first,
    String? after,
  });

  Future<int> getTotalProductCount({required String productCategoryId});

  Future<ProdDetails> getProductById({required String productId});
}
