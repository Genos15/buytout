import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    query CategoryProducts($categoryId: UUID!, $first: Int!, $after: UUID, $searchText: String) {
      categoryProducts(
        categoryId: $categoryId
        first: $first
        after: $after
        searchText: $searchText
      ) {
        edges {
          node {
            productId
            productNameEn
            productNameOtherLanguages
            pricePerCurrency
          }
        }
      }
    }
  """,
);

DocumentNode get categoryProductRequest => _request;
