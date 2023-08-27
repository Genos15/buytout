import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'domain/graphql.link.builder.dart';
import 'graphql.custom-auth.link.dart';

abstract class GQLClientBuilder {
  static ValueNotifier<GraphQLClient> construct({
    required String wsLinkRef,
    required String baseLinkRef,
  }) {
    var link = GraphQLLinkBuilder()
        .setBaseHttpLink(baseLinkRef)
        .setWebSocketLink(wsLinkRef)
        .setCustomLink(CustomAuthLink(otherHeaders: {}))
        .build();

    return _buildClient(link);
  }

  static ValueNotifier<GraphQLClient> _buildClient(Link link) {
    return ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(),
        defaultPolicies: DefaultPolicies(
          watchMutation: Policies(
            fetch: FetchPolicy.cacheAndNetwork,
            error: ErrorPolicy.none,
            cacheReread: CacheRereadPolicy.mergeOptimistic,
          ),
        ),
      ),
    );
  }
}
