// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Registration _$$_RegistrationFromJson(Map<String, dynamic> json) =>
    _$_Registration(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as int,
    );

Map<String, dynamic> _$$_RegistrationToJson(_$_Registration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
