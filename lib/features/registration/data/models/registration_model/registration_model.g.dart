// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationModelImpl _$$RegistrationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationModelImpl(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$$RegistrationModelImplToJson(
        _$RegistrationModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
