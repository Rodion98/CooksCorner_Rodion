import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/ingredients_model.dart/ingredients_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/recipe_detail_model/recipe_detail_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/ingredients_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/injection/injection.dart';

@Injectable(as: Converter<RecipeDetailModel, RecipeDetailEntity>)
class RecipeHomeMapper extends Converter<RecipeDetailModel, RecipeDetailEntity> {
  @override
  RecipeDetailEntity convert(RecipeDetailModel input) {
    return RecipeDetailEntity(
      id: input.id,
      recipeName: input.recipeName,
      imageUrl: input.imageUrl,
      author: input.author,
      cookingTime: input.cookingTime,
      difficulty: input.difficulty,
      likeQuantity: input.likeQuantity,
      isLiked: input.isLiked,
      isSaved: input.isSaved,
      description: input.description,
      ingredients:
          (input.ingredients).map((e) => getIt<Converter<IngredientsModel, IngredientsEntity>>().convert(e)).toList(),
    );
  }
}
