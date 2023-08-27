import 'dart:async';
import 'dart:io';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:graphql/client.dart';

typedef RequestTransformer = FutureOr<Request> Function(Request request);

typedef OnException = FutureOr<String> Function(
  HttpLinkServerException exception,
);

class CustomAuthLink extends _AsyncReqTransformLink {
  CustomAuthLink({
    this.headerKey = HttpHeaders.authorizationHeader,
    this.otherHeaders,
  }) : super(
            requestTransformer:
                transform(headerKey: headerKey, otherHeaders: otherHeaders));

  final String headerKey;
  final Map<String, String>? otherHeaders;

  static RequestTransformer transform({
    required String headerKey,
    Map<String, String>? otherHeaders,
  }) {
    return (Request request) async {
      final token = _token(token: otherHeaders?[headerKey]);
      return request.updateContextEntry<HttpLinkHeaders>((headers) {
        final pushedHeaders = <String, String>{
          ...?headers?.headers,
          ...?otherHeaders,
          if (token != null) headerKey: token,
        };
        // log('-- pushed-headers: \n${prettyJson(pushedHeaders)}');
        return HttpLinkHeaders(headers: pushedHeaders);
      });
    };
  }

  static String? _token({String? token}) {
    return 'Bearer anonymous token';
  }
}

class _AsyncReqTransformLink extends Link {
  final RequestTransformer requestTransformer;

  _AsyncReqTransformLink({required this.requestTransformer});

  @override
  Stream<Response> request(
    Request request, [
    NextLink? forward,
  ]) async* {
    final req = await requestTransformer(request);

    yield* forward!(req);
  }
}

