import 'package:buytout/shared/index.dart';

abstract interface class ProductRepository {
  Future<Result<Iterable<ProductPreview>>> fetchNewArrivalProductPreviews(
      {required int first, String? after});

  Future<Result<Iterable<ProductPreview>>> fetchProductPreviews(
      {required int first, String? after});

  Future<Result<Product>> fetchProductById({required String productId});
}
