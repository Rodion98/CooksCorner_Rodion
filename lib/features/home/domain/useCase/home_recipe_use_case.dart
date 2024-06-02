import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/repository/repository.dart';

@singleton
class RecipeHomeUseCase {
  final HomeRepo repo;

  RecipeHomeUseCase({required this.repo});

  Future<Either<Failure, Map<String, List<RecipeEntity>>>> call() async {
    var entity = await repo.getRecipeCategory();
    return entity;
  }
}
