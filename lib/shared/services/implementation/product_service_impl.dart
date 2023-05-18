import 'package:buytout/shared/index.dart';

class ProductServiceImpl implements ProductService {
  final ProductRepository repository;

  ProductServiceImpl({required this.repository});

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
