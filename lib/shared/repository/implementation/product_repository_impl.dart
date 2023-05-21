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
      return Failure(const FormatException());
    }
    final products = (mapApiData['products'] as List)
        .map((jsonObject) => ProductPreview.fromJson(jsonObject))
        .take(15);
    return Success(products);
  }

  @override
  Future<Result<Product>> fetchProductById({required String productId}) async {
    return Idle();
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
      return Failure(const FormatException());
    }

    final products = (mapApiData['products'] as List)
        .map((jsonObject) => ProductPreview.fromJson(jsonObject));
    return Success(products.toList().reversed);
  }
}
