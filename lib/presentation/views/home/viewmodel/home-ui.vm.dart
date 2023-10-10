import 'dart:async';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final homeUiVmProvider =
    StateNotifierProvider.autoDispose<HomeUiVm, HomeUiVmState>((ref) {
  return HomeUiVm();
});

class HomeUiVm extends StateNotifier<HomeUiVmState> {
  HomeUiVm() : super(const AsyncValue.loading()) {
    unawaited(onLoad());
  }

  Future<void> onLoad() async {
    final primary = await _getPrimaryCategory();
    final secondary = await _getSecondaryCategory();
    final subCategories = await _getSubCategories();

    state = AsyncValue.data(HomeUiState(
      primary: primary,
      secondary: secondary,
      categories: subCategories,
    ));
  }

  Future<List<Category>> _getSubCategories() async {
    return [
      Category(
        categoryId: '91e34b04-72ca-4eee-84da-b896ddee6901',
        categoryNameEn: 'boutique été',
        imageUrl: Environment.imageLink,
      ),
      Category(
        categoryId: '89b24ae4-975b-480b-b54a-fdc2c5165cb1',
        categoryNameEn: 'tout nouveau',
        imageUrl: Environment.imageLink,
      ),
      Category(
        categoryId: '34c63cc8-80fa-4abd-97a0-4d3bfebd3cfb',
        categoryNameEn: 'maillots dès 1500 FCFA',
        imageUrl: Environment.imageLink,
      ),
      Category(
        categoryId: '1cd50b65-7e62-475d-a0b8-6efdf249f350',
        categoryNameEn: 'nouveautés douala',
        imageUrl: Environment.imageLink,
      ),
      Category(
        categoryId: '98f6a669-ec67-43a7-8ba1-7e8b2f842b7d',
        categoryNameEn: 'tendance kribi',
        imageUrl: Environment.imageLink,
      ),
    ];
  }

  Future<Category> _getPrimaryCategory() async {
    return Category(
      categoryId: '7ea68a25-65bb-4109-bdee-9f41b597585d',
      categoryNameEn: 'Outfit',
      imageUrl: Environment.imageLink,
    );
  }

  Future<Category> _getSecondaryCategory() async {
    return const Category(
      categoryId: '1afbc7e0-bda2-4fa3-b592-9e7e8e06bdab',
      categoryNameEn: 'Street wear',
      imageUrl:
          'https://cdn.cliqueinc.com/posts/225010/easy-outfit-ideas-225010-1670580534067-main.700x0c.jpg',
    );
  }
}
