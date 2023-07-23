import 'package:buytout/config/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.d.freezed.dart';

part 'product.d.g.dart';

@freezed
@immutable
sealed class Product with _$Product {
  const Product._();

  const factory Product.input({
    required String id,
    required String name,
    required int displayPrice,
    required String displayPriceAsString,
    required int price,
    required String priceAsString,
    required String currency,
    required String image1,
    @Default(0) int percentage,
    @Default(0) int isFavorite,
    @Default(mockedInStock) int inStock,
  }) = ProductInput;

  const factory Product.output({
    required String id,
    required String name,
    required int displayPrice,
    required String displayPriceAsString,
    required int price,
    required String priceAsString,
    required String description,
    required String currency,
    required String image1,
    String? image2,
    String? image3,
    String? image4,
    String? image5,
    @Default(0) int percentage,
    @Default(0) int favorite,
    @Default(mockedInStock) int inStock,
    String? nameHighlight,
    String? descriptionHighlight,
    double? queryScore,
  }) = ProductOutput;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
