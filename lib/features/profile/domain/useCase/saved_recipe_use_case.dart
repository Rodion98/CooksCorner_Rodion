import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/repository/repository.dart';

@singleton
class SavedRecipeHomeUseCase {
  final ProfileRepo repo;

  SavedRecipeHomeUseCase({required this.repo});

  Future<Either<Failure, List<RecipeEntity>>> call() async {
    var entity = await repo.getSavedRecipe();
    return entity;
  }
}