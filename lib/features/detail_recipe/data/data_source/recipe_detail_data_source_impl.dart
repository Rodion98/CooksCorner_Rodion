import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_paths.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/data_source/recipe_detail_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/recipe_detail_model/recipe_detail_model.dart';

@Injectable(as: RecipeDetailDataSource)
class RecipeDetailDataSourceImpl implements RecipeDetailDataSource {
  final HttpClient _client;

  RecipeDetailDataSourceImpl(
    this._client,
  );

  @override
  Future<RecipeDetailModel> getRecipesCategory({int? id}) async {
    final result = await _client.get(
      HttpPaths.getDetailRecipe + id.toString(),
    );
    final model = RecipeDetailModel.fromJson(result.data);

    return model;
  }

  @override
  Future<void> putLike({required int? id}) async {
    await _client.put(
      HttpPaths.putLike + id.toString(),
    );
  }

  @override
  Future<void> putSave({required int? id}) async {
    await _client.put(
      HttpPaths.putSave + id.toString(),
    );
  }
}
