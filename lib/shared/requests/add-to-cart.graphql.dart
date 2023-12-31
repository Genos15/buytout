import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    mutation ADD_TO_CART($productId: UUID!, $quantity: Int!, $productAttributeId: UUID) {
      addToCart(
        shoppingCartInput: {productId: $productId, quantity: $quantity, productAttributeId: $productAttributeId}
      )
    }
  """,
);

DocumentNode get addToCartRequest => _request;
