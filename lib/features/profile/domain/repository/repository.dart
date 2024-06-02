import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';

abstract class ProfileRepo {
  Future<Either<Failure, ProfileEntity>> getProfile();
  Future<Either<Failure, Map<String, List<RecipeEntity>>>> getRecipes();
}
