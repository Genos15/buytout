import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'domain/graphql.link.builder.dart';
import 'graphql.custom-auth.link.dart';

class GQLClientFactory {
  GraphQLClient? _instance;

  GraphQLClient get instance => _instance!;

  GQLClientFactory({
    required String wsLinkRef,
    required String baseLinkRef,
    required FutureOr<Map<String, String>> Function() getHeaders,
  }) {
    final link = GraphQLLinkBuilder()
        .setBaseHttpLink(baseLinkRef)
        .setWebSocketLink(wsLinkRef)
        .setCustomLink(CustomAuthLink(getHeaders: getHeaders))
        .build();

    _instance ??= GraphQLClient(
      link: link,
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        watchMutation: Policies(
          fetch: FetchPolicy.cacheAndNetwork,
          error: ErrorPolicy.none,
          cacheReread: CacheRereadPolicy.mergeOptimistic,
        ),
      ),
    );
  }
}
