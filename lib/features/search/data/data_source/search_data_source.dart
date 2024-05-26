import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_chefs_model/search_chefs_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_recipes_model/search_recipes_model.dart';

abstract class SearchDataSource {
  Future<List<SearchChefsModel>> getSearchChefs({String? query});
  Future<List<SearchRecipesModel>> getSearchRecipes({String? query});
}
