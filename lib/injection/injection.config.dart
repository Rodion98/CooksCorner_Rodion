// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i4;

import 'package:dio/dio.dart' as _i23;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart'
    as _i50;
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart'
    as _i25;
import 'package:neobis_flutter_cooks_corner_rodion/core/services/auth_service.dart'
    as _i3;
import 'package:neobis_flutter_cooks_corner_rodion/core/services/secure_storage_service.dart'
    as _i47;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/data_source/impl/login_data_source_impl.dart'
    as _i27;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/data_source/login_data_source.dart'
    as _i26;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/repository/login_repo.dart'
    as _i29;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/repository/repository.dart'
    as _i28;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/useCase/login_use_case.dart'
    as _i30;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/useCase/sign_out_use_case.dart'
    as _i49;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart'
    as _i51;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/data_source/recipe_detail_data_source.dart'
    as _i36;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/data_source/recipe_detail_data_source_impl.dart'
    as _i37;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/mapper/ingredients_converter.dart'
    as _i13;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/mapper/recipe_detail_converter.dart'
    as _i7;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/ingredients_model.dart/ingredients_model.dart'
    as _i11;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/recipe_detail_model/recipe_detail_model.dart'
    as _i5;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/repository/recipe_detail_repository_impl.dart'
    as _i53;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/ingredients_entity.dart'
    as _i12;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart'
    as _i6;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/repository/repository.dart'
    as _i52;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/detail_recipe_use_case.dart'
    as _i66;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/put_like_use_case.dart'
    as _i60;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/put_save_use_case.dart'
    as _i61;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/bloc/detail_recipe_bloc.dart'
    as _i67;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/data_source/home_data_source.dart'
    as _i54;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/data_source/impl/home_data_source_impl.dart'
    as _i55;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/mapper/recipe_converter.dart'
    as _i19;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart'
    as _i17;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/repository/home_recipe_repository_impl.dart'
    as _i57;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart'
    as _i18;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/repository/repository.dart'
    as _i56;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/useCase/home_recipe_use_case.dart'
    as _i62;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart'
    as _i68;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/converter/profile_converter.dart'
    as _i22;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/data_source/impl/profile_data_source_impl.dart'
    as _i32;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/data_source/profile_data_source.dart'
    as _i31;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/models/profile_model/profile_model.dart'
    as _i20;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/repository/profile_repository_impl.dart'
    as _i34;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart'
    as _i21;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/repository/repository.dart'
    as _i33;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/get_recipes_use_case.dart'
    as _i58;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/profile_use_case.dart'
    as _i35;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/bloc/profile_bloc.dart'
    as _i59;
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/data_source/impl/registration_data_source_impl.dart'
    as _i39;
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/data_source/registration_data_source.dart'
    as _i38;
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/repository/registration_repo.dart'
    as _i41;
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/domain/repository/repository.dart'
    as _i40;
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/domain/useCase/registration_use_case.dart'
    as _i42;
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/presentation/bloc/registration_bloc.dart'
    as _i63;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/data_source/impl/search_data_source_impl.dart'
    as _i44;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/data_source/search_data_source.dart'
    as _i43;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/converter/search_chefs_converter.dart'
    as _i16;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/converter/search_recipes_converter.dart'
    as _i10;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_chefs_model/search_chefs_model.dart'
    as _i14;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_recipes_model/search_recipes_model.dart'
    as _i8;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/repository/search_repository_impl.dart'
    as _i46;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart'
    as _i15;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart'
    as _i9;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/repository/repository.dart'
    as _i45;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/useCase/search_chefs_use_case.dart'
    as _i64;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/useCase/search_recipes_use_case.dart'
    as _i65;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/bloc/search_bloc.dart'
    as _i69;
import 'package:neobis_flutter_cooks_corner_rodion/injection/injection_module.dart'
    as _i70;
import 'package:shared_preferences/shared_preferences.dart' as _i48;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.AuthService>(() => _i3.AuthService());
    gh.factory<_i4.Converter<_i5.RecipeDetailModel, _i6.RecipeDetailEntity>>(
        () => _i7.RecipeHomeMapper());
    gh.factory<_i4.Converter<_i8.SearchRecipesModel, _i9.SearchRecipeEntity>>(
        () => _i10.SearchRecipesConverter());
    gh.factory<_i4.Converter<_i11.IngredientsModel, _i12.IngredientsEntity>>(
        () => _i13.RecipeHomeMapper());
    gh.factory<_i4.Converter<_i14.SearchChefsModel, _i15.SearchChefsEntity>>(
        () => _i16.SearchChefsConverter());
    gh.factory<_i4.Converter<_i17.RecipeModel, _i18.RecipeEntity>>(
        () => _i19.RecipeConverter());
    gh.factory<_i4.Converter<_i20.ProfileModel, _i21.ProfileEntity>>(
        () => _i22.RecipeHomeMapper());
    gh.factory<_i23.Dio>(() => registerModule.dio);
    gh.singleton<_i24.FlutterSecureStorage>(() => registerModule.storage);
    gh.singleton<_i25.HttpClient>(() => _i25.HttpClient(gh<_i23.Dio>()));
    gh.factory<_i26.LoginDataSource>(
        () => _i27.LoginDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i28.LoginRepo>(() => _i29.LoginRepoImpl(
          gh<_i26.LoginDataSource>(),
          gh<_i3.AuthService>(),
        ));
    gh.singleton<_i30.LoginUseCase>(
        () => _i30.LoginUseCase(repo: gh<_i28.LoginRepo>()));
    gh.factory<_i31.ProfileDataSource>(
        () => _i32.ProfileDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i33.ProfileRepo>(() => _i34.ProfileRepositoryImpl(
          gh<_i31.ProfileDataSource>(),
          gh<_i4.Converter<_i20.ProfileModel, _i21.ProfileEntity>>(),
          gh<_i4.Converter<_i17.RecipeModel, _i18.RecipeEntity>>(),
        ));
    gh.singleton<_i35.ProfileUseCase>(
        () => _i35.ProfileUseCase(repo: gh<_i33.ProfileRepo>()));
    gh.factory<_i36.RecipeDetailDataSource>(
        () => _i37.RecipeDetailDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i38.RegistrationDataSource>(
        () => _i39.RegistrationDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i40.RegistrationRepo>(
        () => _i41.RegistrationRepoImpl(gh<_i38.RegistrationDataSource>()));
    gh.singleton<_i42.RegistrationUseCase>(
        () => _i42.RegistrationUseCase(repo: gh<_i40.RegistrationRepo>()));
    gh.factory<_i43.SearchDataSource>(
        () => _i44.SearchDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i45.SearchRepo>(() => _i46.SearchRepositoryImpl(
          gh<_i43.SearchDataSource>(),
          gh<_i4.Converter<_i14.SearchChefsModel, _i15.SearchChefsEntity>>(),
          gh<_i4.Converter<_i8.SearchRecipesModel, _i9.SearchRecipeEntity>>(),
        ));
    gh.singleton<_i47.SecureStorageService>(
        () => _i47.SecureStorageService(gh<_i24.FlutterSecureStorage>()));
    await gh.singletonAsync<_i48.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i49.SignOutUseCase>(
        () => _i49.SignOutUseCase(repo: gh<_i28.LoginRepo>()));
    gh.singleton<_i50.AppRouter>(() => _i50.AppRouter(gh<_i3.AuthService>()));
    gh.singleton<_i51.AuthorizationBloc>(() => _i51.AuthorizationBloc(
          loginUseCase: gh<_i30.LoginUseCase>(),
          signOutUseCase: gh<_i49.SignOutUseCase>(),
        ));
    gh.factory<_i52.DetailRecipeRepo>(() => _i53.DetailRecipeRepoImpl(
          gh<_i36.RecipeDetailDataSource>(),
          gh<_i4.Converter<_i5.RecipeDetailModel, _i6.RecipeDetailEntity>>(),
        ));
    gh.factory<_i54.HomeDataSource>(
        () => _i55.HomeDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i56.HomeRepo>(() => _i57.HomeRecipeRepositoryImpl(
          gh<_i54.HomeDataSource>(),
          gh<_i4.Converter<_i17.RecipeModel, _i18.RecipeEntity>>(),
        ));
    gh.singleton<_i58.MyRecipeHomeUseCase>(
        () => _i58.MyRecipeHomeUseCase(repo: gh<_i33.ProfileRepo>()));
    gh.factory<_i59.ProfileBloc>(() => _i59.ProfileBloc(
          gh<_i35.ProfileUseCase>(),
          gh<_i58.MyRecipeHomeUseCase>(),
        ));
    gh.singleton<_i60.PutLikeUseCase>(
        () => _i60.PutLikeUseCase(repo: gh<_i52.DetailRecipeRepo>()));
    gh.singleton<_i61.PutSaveUseCase>(
        () => _i61.PutSaveUseCase(repo: gh<_i52.DetailRecipeRepo>()));
    gh.singleton<_i62.RecipeHomeUseCase>(
        () => _i62.RecipeHomeUseCase(repo: gh<_i56.HomeRepo>()));
    gh.singleton<_i63.RegistrationBloc>(() => _i63.RegistrationBloc(
        registrationUseCase: gh<_i42.RegistrationUseCase>()));
    gh.singleton<_i64.SearchChefshUseCase>(
        () => _i64.SearchChefshUseCase(repo: gh<_i45.SearchRepo>()));
    gh.singleton<_i65.SearchRecipesUseCase>(
        () => _i65.SearchRecipesUseCase(repo: gh<_i45.SearchRepo>()));
    gh.singleton<_i66.DetaiRecipeUseCase>(
        () => _i66.DetaiRecipeUseCase(repo: gh<_i52.DetailRecipeRepo>()));
    gh.factory<_i67.DetailRecipeBloc>(() => _i67.DetailRecipeBloc(
          gh<_i66.DetaiRecipeUseCase>(),
          gh<_i60.PutLikeUseCase>(),
          gh<_i61.PutSaveUseCase>(),
        ));
    gh.factory<_i68.HomeBloc>(
        () => _i68.HomeBloc(gh<_i62.RecipeHomeUseCase>()));
    gh.factory<_i69.SearchBloc>(() => _i69.SearchBloc(
          gh<_i65.SearchRecipesUseCase>(),
          gh<_i64.SearchChefshUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i70.RegisterModule {}
