// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeDetailModelImpl _$$RecipeDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipeDetailModelImpl(
      id: (json['id'] as num).toInt(),
      recipeName: json['recipeName'] as String,
      imageUrl: json['imageUrl'] as String,
      author: json['author'] as String,
      cookingTime: json['cookingTime'] as String,
      difficulty: json['difficulty'] as String,
      likeQuantity: (json['likeQuantity'] as num).toInt(),
      isLiked: json['isLiked'] as bool,
      isSaved: json['isSaved'] as bool,
      description: json['description'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => IngredientsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      required: json['required'],
    );

Map<String, dynamic> _$$RecipeDetailModelImplToJson(
        _$RecipeDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipeName': instance.recipeName,
      'imageUrl': instance.imageUrl,
      'author': instance.author,
      'cookingTime': instance.cookingTime,
      'difficulty': instance.difficulty,
      'likeQuantity': instance.likeQuantity,
      'isLiked': instance.isLiked,
      'isSaved': instance.isSaved,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'required': instance.required,
    };
