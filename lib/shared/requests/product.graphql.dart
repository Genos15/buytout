import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    query PRODUCT_DETAILS($productId: UUID!) {
      product(productId: $productId) {
        productId
        productNameEn
        productNameOtherLanguages
        pricePerCurrency
        stockQuantity
        discount
      }
    }
  """,
);

DocumentNode get productRequest => _request;
