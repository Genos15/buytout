import 'package:freezed_annotation/freezed_annotation.dart';

part 'language.map.d.freezed.dart';

part 'language.map.d.g.dart';

@freezed
@immutable
class LanguageMap with _$LanguageMap {
  const LanguageMap._();

  @JsonSerializable(explicitToJson: true)
  const factory LanguageMap({@JsonKey(name: 'FR') String? fr}) = _LanguageMap;

  factory LanguageMap.fromJson(Map<String, dynamic> json) =>
      _$LanguageMapFromJson(json);
}
