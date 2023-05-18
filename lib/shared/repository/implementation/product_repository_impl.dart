import 'package:buytout/shared/index.dart';

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Iterable<ProductPreview>> fetchNewArrivalProductPreviews(
      {required int first, String? after}) {
    // TODO: implement fetchNewArrivalProductPreviews
    throw UnimplementedError();
  }

  @override
  Future<Product> fetchProductById({required String productId}) {
    // TODO: implement fetchProductById
    throw UnimplementedError();
  }

  @override
  Future<Iterable<ProductPreview>> fetchProductPreviews(
      {required int first, String? after}) {
    // TODO: implement fetchProductPreviews
    throw UnimplementedError();
  }
}
