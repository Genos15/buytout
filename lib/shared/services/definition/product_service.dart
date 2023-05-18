import 'package:buytout/shared/index.dart';

abstract interface class ProductService {
  Future<Iterable<ProductPreview>> fetchNewArrivalProductPreviews(
      {required int first, String? after});

  Future<Iterable<ProductPreview>> fetchProductPreviews(
      {required int first, String? after});

  Future<Product> fetchProductById({required String productId});
}
