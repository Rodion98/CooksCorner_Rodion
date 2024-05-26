// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: (json['id'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      name: json['name'] as String,
      recipeQuantity: (json['recipeQuantity'] as num).toInt(),
      followerQuantity: (json['followerQuantity'] as num).toInt(),
      followingQuantity: (json['followingQuantity'] as num).toInt(),
      biography: json['biography'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'recipeQuantity': instance.recipeQuantity,
      'followerQuantity': instance.followerQuantity,
      'followingQuantity': instance.followingQuantity,
      'biography': instance.biography,
    };
