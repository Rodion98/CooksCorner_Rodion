import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart';

abstract class DetailRecipeRepo {
  Future<Either<Failure, RecipeDetailEntity>> getDetailRecipe(int? id);
  Future<void> putSave(int? id);
  Future<void> putLike(int? id);
}
