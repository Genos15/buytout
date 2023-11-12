import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    query GET_CATEGORIES_QUERY($first: Int!, $after: UUID) {
      categories(first: $first, after: $after) {
        edges {
          node {
            categoryId
            categoryNameEn
            categoryNameOtherLanguages
            html
            fullWidth
            imageUrl
            bgColor
          }
        }
      }
    }
  """,
);

DocumentNode get getCategoriesRequest => _request;
