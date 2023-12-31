import 'package:buytout/shared/index.dart';

final categoryServiceProvider = Provider.autoDispose<CategoryService>((ref) {
  return CategoryServiceImpl(categoryRepository: ref.read(categoryRepositoryProvider));
});

class CategoryServiceImpl implements CategoryService {
  final CategoryRepository categoryRepository;

  CategoryServiceImpl({required this.categoryRepository});

  @override
  Future<Iterable<Category>> getAllCategories({required int first, String? after}) {
    return categoryRepository.getAllCategories(first: first, after: after);
  }
}
