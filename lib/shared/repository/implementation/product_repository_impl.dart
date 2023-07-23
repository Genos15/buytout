import 'dart:convert';

import 'package:buytout/shared/index.dart';
import 'package:flutter/services.dart';

final productRepositoryProvider =
    Provider<ProductRepository>((ref) => ProductRepositoryImpl());

class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<Result<Iterable<ProductPreview>>> fetchNewArrivalProductPreviews({
    required int first,
    String? after,
  }) async {
    // try {
    //   await Future.delayed(3.seconds);
    //   // final apiData =
    //   //     await rootBundle.loadString('assets/fake_product_preview.json');
    //   // final jsonApiData = await jsonDecode(apiData);
    //   // final Map<String, dynamic> mapApiData = Map.castFrom(jsonApiData);
    //   //
    //   // if (mapApiData.containsKey('products') == false &&
    //   //     mapApiData['products']! is List) {
    //   //   return Failure(const FormatException(), StackTrace.current);
    //   // }
    //   // final products = (mapApiData['products'] as List)
    //   //     .map((jsonObject) => ProductPreview.fromJson(jsonObject))
    //   //     .take(15);
    //   return Success([]);
    // } on Exception catch (exception, stackTrace) {
    //   return Failure(exception, stackTrace);
    // }
    return const Result.idle();
  }

  @override
  Future<Result<Product>> fetchProductById({required String productId}) async {
    // try {
    //   await Future.delayed(3.seconds);
    //   final fetchedProductResult = await fetchProductPreviews(first: 1000);
    //   final products =
    //       (fetchedProductResult as Success<Iterable<ProductPreview>>).data;
    //
    //   final optional =
    //       products.where((element) => element.id == productId).firstOrNull;
    //
    //   if (optional == null) {
    //     return Failure(Exception(), StackTrace.current);
    //   }
    //
    //   final product = Product(
    //     id: optional.id,
    //     name: optional.name,
    //     displayPrice: optional.displayPrice,
    //     displayPriceAsString: optional.displayPriceAsString,
    //     price: optional.price,
    //     priceAsString: optional.priceAsString,
    //     currency: optional.currency,
    //     percentage: optional.percentage,
    //     isFavorite: optional.isFavorite,
    //     image1: optional.image1,
    //     image2: '',
    //     image3: '',
    //     image4: '',
    //     image5: '',
    //     description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    //   );
    //   return Success(product);
    // } on Exception catch (exception, stackTrace) {
    //   return Failure(exception, stackTrace);
    // }
    return const Result.idle();
  }

  @override
  Future<Result<Iterable<ProductPreview>>> fetchProductPreviews({
    required int first,
    String? after,
  }) async {
    // try {
    //   await Future.delayed(5.seconds);
    //   // final apiData =
    //   //     await rootBundle.loadString('assets/fake_product_preview.json');
    //   // final jsonApiData = await jsonDecode(apiData);
    //   // final Map<String, dynamic> mapApiData = Map.castFrom(jsonApiData);
    //   //
    //   // if (mapApiData.containsKey('products') == false &&
    //   //     mapApiData['products']! is List) {
    //   //   throw Exception('Impossible to fetch the product previews');
    //   // }
    //   //
    //   // final products = (mapApiData['products'] as List)
    //   //     .map((jsonObject) => ProductPreview.fromJson(jsonObject));
    //   // return Success(products.toList().reversed);
    //   return Success([]);
    // } on Exception catch (exception, stackTrace) {
    //   return Failure(exception, stackTrace);
    // }
    return const Result.idle();
  }
}
