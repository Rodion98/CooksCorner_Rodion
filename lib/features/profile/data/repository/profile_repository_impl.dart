import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/on_repository_exception.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/data_source/profile_data_source.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/models/profile_model/profile_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/repository/repository.dart';

@Injectable(as: ProfileRepo)
class ProfileRepositoryImpl extends ProfileRepo {
  final ProfileDataSource _dataSource;
  final Converter<ProfileModel, ProfileEntity> _profileConverter;
  final Converter<RecipeModel, RecipeEntity> _recipeConverter;

  ProfileRepositoryImpl(
    this._dataSource,
    this._profileConverter,
    this._recipeConverter,
  );

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final result = await _dataSource.getProfile();
      final profile = _profileConverter.convert(result);
      print(profile);
      return Right(profile);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, List<RecipeEntity>>> getMyRecipe() async {
    try {
      final result = await _dataSource.getMyRecipes();
      final recipes = result.map((e) => _recipeConverter.convert(e)).toList();
      return Right(recipes);
    } catch (e) {
      return onRepositoryException(e);
    }
  }

  @override
  Future<Either<Failure, List<RecipeEntity>>> getSavedRecipe() async {
    try {
      final result = await _dataSource.getSavedRecipes();
      final recipes = result.map((e) => _recipeConverter.convert(e)).toList();
      return Right(recipes);
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
