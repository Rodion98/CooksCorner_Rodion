import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_recipes_model/search_recipes_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart';

@Injectable(as: Converter<SearchRecipesModel, SearchRecipeEntity>)
class SearchRecipesConverter extends Converter<SearchRecipesModel, SearchRecipeEntity> {
  @override
  SearchRecipeEntity convert(SearchRecipesModel input) {
    return SearchRecipeEntity(id: input.id, image: input.image, recipeName: input.recipeName);
  }
}
