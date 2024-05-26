import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<SearchChefsEntity>>> geSearchChefs(String? query);
  Future<Either<Failure, List<SearchRecipeEntity>>> geSearchRecipes(String? query);
}
