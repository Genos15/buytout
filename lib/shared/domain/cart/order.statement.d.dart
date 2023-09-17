import 'package:buytout/shared/index.dart';

part 'order.statement.d.freezed.dart';

part 'order.statement.d.g.dart';

@freezed
@immutable
class OrderStatement with _$OrderStatement {
  const OrderStatement._();

  const factory OrderStatement({
    required List<ShoppingCartItem> products,
    required int deliveryAmount,
    required int productTotalAmount,
    required int totalAmount,
    required String currency,
  }) = _OrderStatement;

  factory OrderStatement.fromJson(Map<String, dynamic> json) =>
      _$OrderStatementFromJson(json);
}
