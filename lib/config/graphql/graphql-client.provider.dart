import 'dart:async';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final _headerGenerator = Provider<FutureOr<Map<String, String>> Function()>(
  (ref) => () {
    final tokenManager = ref.read(tokenManagerProvider);

    return tokenManager.getAuthorizationHeaders(
      refreshTokenHeaderName: Environment.refreshTokenHeaderName,
      anonymousHeaderName: Environment.anonymousHeaderName,
      anonymousUserName: Environment.anonymousUserName,
    );
  },
);

final gqlClientProvider = Provider.autoDispose((ref) {
  final getHeaders = ref.read(_headerGenerator);

  final factory = GQLClientFactory(
    wsLinkRef: Environment.gqlWsLinkRef,
    baseLinkRef: Environment.gqlBaseLinkRef,
    getHeaders: getHeaders,
  );

  return factory.instance;
});
