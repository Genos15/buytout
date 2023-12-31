import 'dart:async';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql/client.dart';

typedef RequestTransformer = FutureOr<Request> Function(Request request);

typedef OnException = FutureOr<String> Function(
  HttpLinkServerException exception,
);

class CustomAuthLink extends _AsyncReqTransformLink {
  CustomAuthLink({required this.getHeaders})
      : super(transformer: transform(getHeaders: getHeaders));

  final FutureOr<Map<String, String>> Function() getHeaders;

  static RequestTransformer transform({
    required FutureOr<Map<String, String>> Function() getHeaders,
  }) {
    return (Request request) async {
      final additionalHeaders = await getHeaders();
      return request.updateContextEntry<HttpLinkHeaders>((headers) {
        final pushedHeaders = <String, String>{
          ...?headers?.headers,
          ...additionalHeaders,
        };

        return HttpLinkHeaders(headers: pushedHeaders);
      });
    };
  }
}

class _AsyncReqTransformLink extends Link {
  final RequestTransformer transformer;

  _AsyncReqTransformLink({required this.transformer});

  @override
  Stream<Response> request(
    Request request, [
    NextLink? forward,
  ]) async* {
    final req = await transformer(request);

    yield* forward!(req);
  }
}
