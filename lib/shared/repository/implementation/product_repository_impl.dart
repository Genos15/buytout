import 'dart:convert';

import 'package:buytout/shared/index.dart';
import 'package:flutter/services.dart';

final productRepositoryProvider =
    Provider<ProductRepository>((ref) => ProductRepositoryImpl());

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Result<Iterable<ProductPreview>>> fetchNewArrivalProductPreviews(
      {required int first, String? after}) async {
    await Future.delayed(3.seconds);
    final apiData =
        await rootBundle.loadString('assets/fake_product_preview.json');
    final jsonApiData = await jsonDecode(apiData);
    final Map<String, dynamic> mapApiData = Map.castFrom(jsonApiData);

    if (mapApiData.containsKey('products') == false &&
        mapApiData['products']! is List) {
      return Failure(const FormatException(), StackTrace.current);
    }
    final products = (mapApiData['products'] as List)
        .map((jsonObject) => ProductPreview.fromJson(jsonObject))
        .take(15);
    return Success(products);
  }

  @override
  Future<Result<Product>> fetchProductById({required String productId}) async {
    await Future.delayed(3.seconds);
    const product = Product(
      id: 'id-product',
      name: 'Thintwice product name',
      categoryPreview: ProductCategoryPreview(
        id: 'id-category',
        name: 'Fake Category\'s name',
      ),
      displayPrice: 900,
      displayPriceAsString: '900 FCFA',
      price: 1000,
      priceAsString: '1000 FCFA',
      currency: 'XOF',
      percentage: 10,
      isFavorite: false,
      image1:
          'https://shoeslikepottery.com/en/pls-en/wp-content/uploads/2021/06/low-w-2-1200x796.jpg',
      image2: '',
      image3: '',
      image4: 'https://www.zegna.com/bin/productImage.LHBAS.S4841Z.ROP.F.R6.jpeg',
      image5: '',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    );
    return Success(product);
  }

  @override
  Future<Result<Iterable<ProductPreview>>> fetchProductPreviews(
      {required int first, String? after}) async {
    await Future.delayed(5.seconds);
    final apiData =
        await rootBundle.loadString('assets/fake_product_preview.json');
    final jsonApiData = await jsonDecode(apiData);
    final Map<String, dynamic> mapApiData = Map.castFrom(jsonApiData);

    if (mapApiData.containsKey('products') == false &&
        mapApiData['products']! is List) {
      return Failure(const FormatException(), StackTrace.current);
    }

    final products = (mapApiData['products'] as List)
        .map((jsonObject) => ProductPreview.fromJson(jsonObject));
    return Success(products.toList().reversed);
  }
}
