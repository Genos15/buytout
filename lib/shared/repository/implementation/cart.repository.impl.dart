import 'dart:isolate';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final cartRepositoryProvider = Provider.autoDispose<CartRepository>((ref) {
  final gqlClient = ref.watch(gqlClientProvider);
  return CartRepositoryImpl(gqlClient);
});

class CartRepositoryImpl implements CartRepository {
  final GraphQLClient gqlClient;

  CartRepositoryImpl(this.gqlClient);

  @override
  Future<bool> addToCart({
    required String productId,
    required int quantity,
  }) async {
    final options = MutationOptions(
      document: addToCartRequest,
      fetchPolicy: FetchPolicy.networkOnly,
      parserFn: (data) => data['addToCart'],
      variables: {
        'productId': productId,
        'quantity': quantity,
      },
    );

    final apiResult = await gqlClient.mutate(options);

    if (apiResult.hasException) {
      throw apiResult.exception!;
    }

    return !apiResult.hasException;
  }

  @override
  Future<OrderStatement> getCart() async {
    var options = QueryOptions(
      document: getCartRequest,
      fetchPolicy: FetchPolicy.networkOnly,
      parserFn: (data) => data['orderStatement'],
    );

    final apiResult = await gqlClient.query(options);

    if (apiResult.hasException) {
      throw apiResult.exception!;
    }

    return Isolate.run(() => OrderStatement.fromJson(apiResult.parsedData));
  }
}
