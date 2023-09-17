import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.d.freezed.dart';

part 'token.d.g.dart';


@freezed
@immutable
class Token with _$Token {
  const Token._();

  const factory Token({
    required String accessToken,
    required String refreshToken,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) =>
      _$TokenFromJson(json);
}
