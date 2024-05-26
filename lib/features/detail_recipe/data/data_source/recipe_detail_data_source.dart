import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/recipe_detail_model/recipe_detail_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';

abstract class RecipeDetailDataSource {
  Future<RecipeDetailModel> getRecipesCategory({required int? id});
  Future<void> putLike({required int? id});
  Future<void> putSave({required int? id});
}
