import 'package:buytout/shared/index.dart';

abstract interface class ProductRepository {
  Future<Iterable<ProdLite>> getProductByCategoryId({
    required String productCategoryId,
    required int first,
    String? after,
  });

  Future<int> getTotalProductCount({required String productCategoryId});

  Future<ProdDetails> getProductById({required String productId});
}
