import 'package:buytout/shared/index.dart';

abstract interface class ProductService {
  Future<Result<Iterable<Product>>> findNew({
    required int first,
    String? after,
  });

  Future<Result<Iterable<Product>>> findAll({
    required int first,
    String? after,
  });

  Future<Result<Product>> fetchProductById({required String productId});
}
