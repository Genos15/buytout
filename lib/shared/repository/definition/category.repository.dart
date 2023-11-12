import 'package:buytout/shared/index.dart';

abstract interface class CategoryRepository {
  Future<Iterable<Category>> getAllCategories({
    required int first,
    String? after,
  });
}
