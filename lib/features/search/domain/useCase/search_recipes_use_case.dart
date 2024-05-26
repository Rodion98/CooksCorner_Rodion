import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/repository/repository.dart';

@singleton
class SearchRecipesUseCase {
  final SearchRepo repo;

  SearchRecipesUseCase({required this.repo});

  Future<Either<Failure, List<SearchRecipeEntity>>> call(String? query) async {
    var entity = await repo.geSearchRecipes(query);
    return entity;
  }
}
