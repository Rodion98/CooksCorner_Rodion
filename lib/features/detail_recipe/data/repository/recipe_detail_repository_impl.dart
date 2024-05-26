import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/success.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/on_repository_exception.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/data_source/recipe_detail_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/recipe_detail_model/recipe_detail_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/repository/repository.dart';

@Injectable(as: DetailRecipeRepo)
class DetailRecipeRepoImpl extends DetailRecipeRepo {
  final RecipeDetailDataSource _dataSource;
  final Converter<RecipeDetailModel, RecipeDetailEntity> _converter;

  DetailRecipeRepoImpl(
    this._dataSource,
    this._converter,
  );

  @override
  Future<Either<Failure, RecipeDetailEntity>> getDetailRecipe(int? id) async {
    try {
      final result = await _dataSource.getRecipesCategory(id: id);
      final entity = _converter.convert(result);
      return Right(entity);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<void> putLike(int? id) async {
    await _dataSource.putLike(id: id);
  }

  @override
  Future<void> putSave(int? id) async {
    await _dataSource.putSave(id: id);
  }
}
