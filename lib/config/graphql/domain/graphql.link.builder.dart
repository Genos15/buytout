import 'package:buytout/shared/index.dart';
import 'package:graphql/client.dart';

class GraphQLLinkBuilder {
  late String webSocketRef;
  late String baseRef;
  late Link customAuthLink;

  GraphQLLinkBuilder setWebSocketLink(String linkRef) {
    webSocketRef = linkRef;
    return this;
  }

  GraphQLLinkBuilder setBaseHttpLink(String linkRef) {
    baseRef = linkRef;
    return this;
  }

  GraphQLLinkBuilder setCustomLink(Link link) {
    customAuthLink = link;
    return this;
  }

  Link build() {
    return Link.split(
      (request) => request.isSubscription,
      WebSocketLink(
        webSocketRef,
        config: SocketClientConfig(
          autoReconnect: true,
          inactivityTimeout: 10.minutes,
        ),
      ),
      customAuthLink.concat(HttpLink(baseRef)),
    );
  }
}
