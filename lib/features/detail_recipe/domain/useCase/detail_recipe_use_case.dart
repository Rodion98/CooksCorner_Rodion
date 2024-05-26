import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/repository/repository.dart';

@singleton
class DetaiRecipeUseCase {
  final DetailRecipeRepo repo;

  DetaiRecipeUseCase({required this.repo});

  Future<Either<Failure, RecipeDetailEntity>> call(int? params) async {
    var entity = await repo.getDetailRecipe(params);
    return entity;
  }
}
