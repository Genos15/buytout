import 'package:buytout/shared/index.dart';

var _request = gql(
  r"""
  mutation AUTH($email: String!) {
    authenticate(email: $email)
  }
  """,
);

DocumentNode get authEmailRequest => _request;
