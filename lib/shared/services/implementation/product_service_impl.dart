import 'package:buytout/shared/index.dart';

final productServiceProvider = Provider<ProductService>((ref) =>
    ProductServiceImpl(repository: ref.read(productRepositoryProvider)));

class ProductServiceImpl implements ProductService {
  final ProductRepository repository;

  ProductServiceImpl({required this.repository});

  @override
  Future<Result<Iterable<ProductPreview>>> fetchNewArrivalProductPreviews(
      {required int first, String? after}) {
    return repository.fetchNewArrivalProductPreviews(
      first: first,
      after: after,
    );
  }

  @override
  Future<Result<Product>> fetchProductById({required String productId}) {
    return repository.fetchProductById(productId: productId);
  }

  @override
  Future<Result<Iterable<ProductPreview>>> fetchProductPreviews(
      {required int first, String? after}) {
    return repository.fetchProductPreviews(
      first: first,
      after: after,
    );
  }
}
