// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_chefs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchChefsModelImpl _$$SearchChefsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchChefsModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
    );

Map<String, dynamic> _$$SearchChefsModelImplToJson(
        _$SearchChefsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
    };
