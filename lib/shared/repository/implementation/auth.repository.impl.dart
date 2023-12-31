import 'dart:isolate';

import 'package:buytout/config/index.dart';
import 'package:buytout/shared/index.dart';

final authRepositoryProvider = Provider.autoDispose<AuthRepository>((ref) {
  final gqlClient = ref.watch(gqlClientProvider);
  return AuthRepositoryImpl(gqlClient);
});

class AuthRepositoryImpl implements AuthRepository {
  final GraphQLClient gqlClient;

  AuthRepositoryImpl(this.gqlClient);

  @override
  Future<bool> authenticate({required String email}) async {
    final options = MutationOptions(
      document: authEmailRequest,
      fetchPolicy: FetchPolicy.noCache,
      parserFn: (data) => data['authenticate'],
      variables: {'email': email},
    );

    final apiResult = await gqlClient.mutate(options);

    if (apiResult.hasException) {
      throw apiResult.exception!;
    }

    final response = apiResult.parsedData;
    return response;
  }

  @override
  Future<Token> register({required String code, required String email}) async {
    final options = MutationOptions(
      document: authCodeRequest,
      fetchPolicy: FetchPolicy.noCache,
      parserFn: (data) => data['register'],
      variables: {'code': code, 'email': email},
    );

    final apiResult = await gqlClient.mutate(options);

    if (apiResult.hasException) {
      throw apiResult.exception!;
    }

    return Isolate.run(() => Token.fromJson(apiResult.parsedData));
  }
}
