import 'package:buytout/shared/index.dart';

abstract interface class CategoryService {
  Future<Iterable<Category>> getAllCategories({
    required int first,
    String? after,
  });
}
