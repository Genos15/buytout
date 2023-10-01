// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth-state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthState _$$_AuthStateFromJson(Map<String, dynamic> json) => _$_AuthState(
      user: json['user'],
      isLogged: json['isLogged'] as bool,
    );

Map<String, dynamic> _$$_AuthStateToJson(_$_AuthState instance) =>
    <String, dynamic>{
      'user': instance.user,
      'isLogged': instance.isLogged,
    };
