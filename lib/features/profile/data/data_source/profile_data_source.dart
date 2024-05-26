import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/models/profile_model/profile_model.dart';

abstract class ProfileDataSource {
  Future<ProfileModel> getProfile();
  Future<List<RecipeModel>> getMyRecipes();
  Future<List<RecipeModel>> getSavedRecipes();
}
