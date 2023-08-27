import 'package:buytout/shared/index.dart';

final productServiceProvider = Provider.autoDispose<ProductService>((ref) {
  return ProductServiceImpl(productRepository: ref.watch(productRepositoryProvider));
});

class ProductServiceImpl implements ProductService {
  final ProductRepository productRepository;

  ProductServiceImpl({required this.productRepository});

  @override
  Future<Result<Iterable<Product>>> findNew({
    required int first,
    String? after,
  }) async {
    try {
      final products = await productRepository.findAll(first: first);
      return Result(products);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Result<Product>> fetchProductById({required String productId}) async {
    try {
      final product = await productRepository.find(productId: productId);
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
      final products = await productRepository.findAll(first: first);
      return Result(products);
    } on Exception catch (exception, stacktrace) {
      return Result.error(exception, stacktrace);
    }
  }

  @override
  Future<Iterable<ProdLite>> getProductByCategoryId({
    required String productCategoryId,
    required int first,
    String? after,
  }) {
    // validate the category id
    return productRepository.getProductByCategoryId(
      productCategoryId: productCategoryId,
      first: first,
      after: after,
    );
  }

  @override
  Future<int> getTotalProductCount({required String productCategoryId}) {
    return productRepository.getTotalProductCount(
      productCategoryId: productCategoryId,
    );
  }

  @override
  Future<ProdDetails> getProductById({required String productId}) {
    return productRepository.getProductById(productId: productId);
  }
}
