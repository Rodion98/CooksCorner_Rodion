import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';

abstract class HomeDataSource {
  Future<List<RecipeModel>> getRecipesCategory({
    String? category,
  });
}
