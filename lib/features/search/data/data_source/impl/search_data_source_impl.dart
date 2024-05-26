import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_paths.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/data_source/search_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_chefs_model/search_chefs_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_recipes_model/search_recipes_model.dart';

@Injectable(as: SearchDataSource)
class SearchDataSourceImpl implements SearchDataSource {
  final HttpClient _client;

  SearchDataSourceImpl(
    this._client,
  );

  @override
  Future<List<SearchChefsModel>> getSearchChefs({String? query}) async {
    final result = await _client.get(
      HttpPaths.getSearchChefs,
      queryParameters: {
        "query": query,
      },
    );
    return (result.data as List).map((e) => SearchChefsModel.fromJson(e)).toList();
  }

  @override
  Future<List<SearchRecipesModel>> getSearchRecipes({String? query}) async {
    final result = await _client.get(
      HttpPaths.getSearchRecipes,
      queryParameters: {
        "query": query,
      },
    );
    return (result.data as List).map((e) => SearchRecipesModel.fromJson(e)).toList();
  }
}
