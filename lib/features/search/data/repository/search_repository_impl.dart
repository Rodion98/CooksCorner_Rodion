import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/on_repository_exception.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/data_source/search_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_chefs_model/search_chefs_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_recipes_model/search_recipes_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/repository/repository.dart';

@Injectable(as: SearchRepo)
class SearchRepositoryImpl extends SearchRepo {
  final SearchDataSource _dataSource;
  final Converter<SearchChefsModel, SearchChefsEntity> _converterChefs;
  final Converter<SearchRecipesModel, SearchRecipeEntity> _converterRecipes;

  SearchRepositoryImpl(
    this._dataSource,
    this._converterChefs,
    this._converterRecipes,
  );

  @override
  Future<Either<Failure, List<SearchChefsEntity>>> geSearchChefs(String? query) async {
    try {
      final result = await _dataSource.getSearchChefs(query: query);
      final recipes = result.map((e) => _converterChefs.convert(e)).toList();
      return Right(recipes);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, List<SearchRecipeEntity>>> geSearchRecipes(String? query) async {
    try {
      final result = await _dataSource.getSearchRecipes(query: query);
      final recipes = result.map((e) => _converterRecipes.convert(e)).toList();
      return Right(recipes);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
