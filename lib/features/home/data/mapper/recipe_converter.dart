import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';

@Injectable(as: Converter<RecipeModel, RecipeEntity>)
class RecipeConverter extends Converter<RecipeModel, RecipeEntity> {
  @override
  RecipeEntity convert(RecipeModel input) {
    return RecipeEntity(
        id: input.id,
        image: input.image,
        recipeName: input.recipeName,
        author: input.author,
        likesQuantity: input.likesQuantity,
        savesQuantity: input.savesQuantity,
        isSaved: input.isSaved,
        isLiked: input.isLiked);
  }
}
