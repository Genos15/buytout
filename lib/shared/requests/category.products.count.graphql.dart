import 'package:buytout/shared/index.dart';

// todo: unblock the problem ($categoryId: UUID!)
var _request = gql(
  r"""
    query CategoryProductCount {
      category(categoryId: "7ea68a25-65bb-4109-bdee-9f41b597585d") {
        totalProductCount
      }
    }
  """,
);

DocumentNode get categoryProductCountRequest => _request;
