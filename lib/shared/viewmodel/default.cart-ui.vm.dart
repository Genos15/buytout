import 'package:buytout/shared/index.dart';

const _kDefaultCurrencyDetail = CurrencyDetail(
  currencyCode: 'XAF',
  currencySymbol: 'FCFA',
);

const _kDefaultState = CartUiState(
  cart: OrderStatement(
    products: [],
    deliveryFee: 0,
    serviceFee: 0,
    productTotalAmount: 0,
    totalAmount: 0,
    currencyDetail: _kDefaultCurrencyDetail,
  ),
);

const defaultCartUiState = _kDefaultState;
