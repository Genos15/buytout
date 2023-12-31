import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
    query GET_ORDER_STATEMENT {
      orderStatement {
        totalAmount
        productTotalAmount
        deliveryFee
        serviceFee
        currencyDetail {
          currencyCode
          currencySymbol
        }
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
