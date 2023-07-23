import 'package:buytout/shared/index.dart';

final productServiceProvider = Provider.autoDispose<ProductService>((ref) {
  return ProductServiceImpl(repository: ref.watch(productRepoProvider));
});

class ProductServiceImpl implements ProductService {
  final ProductRepo repository;

  ProductServiceImpl({required this.repository});

  @override
  Future<Result<Iterable<Product>>> findNew({
    required int first,
    String? after,
  }) async {
    try {
      final products = await repository.findAll(first: first);
      return Result(products);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Result<Product>> fetchProductById({required String productId}) async {
    try {
      final product = await repository.find(productId: productId);
      return Result(product);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Result<Iterable<Product>>> findAll({
    required int first,
    String? after,
  }) async {
    try {
      final products = await repository.findAll(first: first);
      return Result(products);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }
}
