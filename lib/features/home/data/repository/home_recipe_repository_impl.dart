import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/on_repository_exception.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/data_source/home_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/repository/repository.dart';

@Injectable(as: HomeRepo)
class HomeRecipeRepositoryImpl extends HomeRepo {
  final HomeDataSource _dataSource;
  final Converter<RecipeModel, RecipeEntity> _converter;

  HomeRecipeRepositoryImpl(
    this._dataSource,
    this._converter,
  );

  @override
  Future<Either<Failure, List<RecipeEntity>>> getRecipeCategory(String? category) async {
    try {
      final result = await _dataSource.getRecipesCategory(category: category);
      final recipes = result.map((e) => _converter.convert(e)).toList();
      return Right(recipes);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
