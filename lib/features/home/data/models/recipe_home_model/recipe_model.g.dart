// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeModelImpl _$$RecipeModelImplFromJson(Map<String, dynamic> json) =>
    _$RecipeModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      recipeName: json['recipeName'] as String,
      author: json['author'] as String,
      likesQuantity: (json['likesQuantity'] as num).toInt(),
      savesQuantity: (json['savesQuantity'] as num).toInt(),
      isSaved: json['isSaved'] as bool,
      isLiked: json['isLiked'] as bool,
    );

Map<String, dynamic> _$$RecipeModelImplToJson(_$RecipeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'recipeName': instance.recipeName,
      'author': instance.author,
      'likesQuantity': instance.likesQuantity,
      'savesQuantity': instance.savesQuantity,
      'isSaved': instance.isSaved,
      'isLiked': instance.isLiked,
    };
