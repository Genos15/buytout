import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    query GET_ORDER_STATEMENT {
      orderStatement {
        totalAmount
        productTotalAmount
        deliveryAmount
        currency
        products {
          product {
            productId
            productNameEn
            pricePerCurrency
            productNameOtherLanguages
          }
          quantity
        }
      }
    }
  """,
);

DocumentNode get getCartRequest => _request;
