import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_paths.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/data_source/profile_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/models/profile_model/profile_model.dart';

@Injectable(as: ProfileDataSource)
class ProfileDataSourceImpl implements ProfileDataSource {
  final HttpClient _client;

  ProfileDataSourceImpl(
    this._client,
  );

  @override
  Future<ProfileModel> getProfile() async {
    final result = await _client.get(
      HttpPaths.getMyProfile,
    );
    return ProfileModel.fromJson(result.data);
  }

  @override
  Future<List<RecipeModel>> getMyRecipes() async {
    final result = await _client.get(
      HttpPaths.getMyRecipes,
    );
    return (result.data as List).map((e) => RecipeModel.fromJson(e)).toList();
  }

  @override
  Future<List<RecipeModel>> getSavedRecipes() async {
    final result = await _client.get(
      HttpPaths.getMySavedRecipes,
    );
    return (result.data as List).map((e) => RecipeModel.fromJson(e)).toList();
  }
}
