import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<RecipeEntity>>> getRecipeCategory(String? category);
}
