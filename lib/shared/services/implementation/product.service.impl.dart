import 'package:buytout/shared/index.dart';

final productServiceProvider = Provider.autoDispose<ProductService>((ref) {
  return ProductServiceImpl(productRepository: ref.read(productRepositoryProvider));
});

class ProductServiceImpl implements ProductService {
  final ProductRepository productRepository;

  ProductServiceImpl({required this.productRepository});

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
