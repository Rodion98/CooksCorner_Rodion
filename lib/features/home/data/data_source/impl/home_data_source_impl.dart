import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_paths.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/data_source/home_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';

@Injectable(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  final HttpClient _client;

  HomeDataSourceImpl(
    this._client,
  );

  @override
  Future<List<RecipeModel>> getRecipesCategory({String? category}) async {
    final result = await _client.get(
      HttpPaths.getHomeRecipes,
      queryParameters: {
        "category": category,
      },
    );
    print(result);
    return (result.data as List).map((e) => RecipeModel.fromJson(e)).toList();
  }
}
