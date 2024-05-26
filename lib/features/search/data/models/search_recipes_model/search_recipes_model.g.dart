// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_recipes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchRecipesModelImpl _$$SearchRecipesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchRecipesModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      recipeName: json['recipeName'] as String,
    );

Map<String, dynamic> _$$SearchRecipesModelImplToJson(
        _$SearchRecipesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'recipeName': instance.recipeName,
    };
