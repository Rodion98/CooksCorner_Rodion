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
    as _i51;
import 'package:neobis_flutter_cooks_corner_rodion/core/network/http_client.dart'
    as _i25;
import 'package:neobis_flutter_cooks_corner_rodion/core/services/auth_service.dart'
    as _i3;
import 'package:neobis_flutter_cooks_corner_rodion/core/services/secure_storage_service.dart'
    as _i48;
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
    as _i50;
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart'
    as _i52;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/data_source/recipe_detail_data_source.dart'
    as _i36;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/data_source/recipe_detail_data_source_impl.dart'
    as _i37;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/mapper/ingredients_converter.dart'
    as _i16;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/mapper/recipe_detail_converter.dart'
    as _i22;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/ingredients_model.dart/ingredients_model.dart'
    as _i14;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/recipe_detail_model/recipe_detail_model.dart'
    as _i20;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/repository/recipe_detail_repository_impl.dart'
    as _i54;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/ingredients_entity.dart'
    as _i15;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart'
    as _i21;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/repository/repository.dart'
    as _i53;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/detail_recipe_use_case.dart'
    as _i67;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/put_like_use_case.dart'
    as _i61;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/put_save_use_case.dart'
    as _i62;
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/bloc/detail_recipe_bloc.dart'
    as _i68;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/data_source/home_data_source.dart'
    as _i55;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/data_source/impl/home_data_source_impl.dart'
    as _i56;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/mapper/recipe_converter.dart'
    as _i7;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/models/recipe_home_model/recipe_model.dart'
    as _i5;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/data/repository/home_recipe_repository_impl.dart'
    as _i58;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart'
    as _i6;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/repository/repository.dart'
    as _i57;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/useCase/home_recipe_use_case.dart'
    as _i63;
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart'
    as _i69;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/converter/profile_converter.dart'
    as _i10;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/data_source/impl/profile_data_source_impl.dart'
    as _i32;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/data_source/profile_data_source.dart'
    as _i31;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/models/profile_model/profile_model.dart'
    as _i8;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/data/repository/profile_repository_impl.dart'
    as _i34;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart'
    as _i9;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/repository/repository.dart'
    as _i33;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/my_recipe_use_case%20copy.dart'
    as _i59;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/profile_use_case.dart'
    as _i35;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/saved_recipe_use_case.dart'
    as _i43;
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/bloc/profile_bloc.dart'
    as _i60;
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
    as _i64;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/data_source/impl/search_data_source_impl.dart'
    as _i45;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/data_source/search_data_source.dart'
    as _i44;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/converter/search_chefs_converter.dart'
    as _i19;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/converter/search_recipes_converter.dart'
    as _i13;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_chefs_model/search_chefs_model.dart'
    as _i17;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_recipes_model/search_recipes_model.dart'
    as _i11;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/repository/search_repository_impl.dart'
    as _i47;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart'
    as _i18;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart'
    as _i12;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/repository/repository.dart'
    as _i46;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/useCase/search_chefs_use_case.dart'
    as _i65;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/useCase/search_recipes_use_case.dart'
    as _i66;
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/bloc/search_bloc.dart'
    as _i70;
import 'package:neobis_flutter_cooks_corner_rodion/injection/injection_module.dart'
    as _i71;
import 'package:shared_preferences/shared_preferences.dart' as _i49;

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
    gh.factory<_i4.Converter<_i5.RecipeModel, _i6.RecipeEntity>>(
        () => _i7.RecipeConverter());
    gh.factory<_i4.Converter<_i8.ProfileModel, _i9.ProfileEntity>>(
        () => _i10.RecipeHomeMapper());
    gh.factory<_i4.Converter<_i11.SearchRecipesModel, _i12.SearchRecipeEntity>>(
        () => _i13.SearchRecipesConverter());
    gh.factory<_i4.Converter<_i14.IngredientsModel, _i15.IngredientsEntity>>(
        () => _i16.RecipeHomeMapper());
    gh.factory<_i4.Converter<_i17.SearchChefsModel, _i18.SearchChefsEntity>>(
        () => _i19.SearchChefsConverter());
    gh.factory<_i4.Converter<_i20.RecipeDetailModel, _i21.RecipeDetailEntity>>(
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
          gh<_i4.Converter<_i8.ProfileModel, _i9.ProfileEntity>>(),
          gh<_i4.Converter<_i5.RecipeModel, _i6.RecipeEntity>>(),
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
    gh.singleton<_i43.SavedRecipeHomeUseCase>(
        () => _i43.SavedRecipeHomeUseCase(repo: gh<_i33.ProfileRepo>()));
    gh.factory<_i44.SearchDataSource>(
        () => _i45.SearchDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i46.SearchRepo>(() => _i47.SearchRepositoryImpl(
          gh<_i44.SearchDataSource>(),
          gh<_i4.Converter<_i17.SearchChefsModel, _i18.SearchChefsEntity>>(),
          gh<_i4.Converter<_i11.SearchRecipesModel, _i12.SearchRecipeEntity>>(),
        ));
    gh.singleton<_i48.SecureStorageService>(
        () => _i48.SecureStorageService(gh<_i24.FlutterSecureStorage>()));
    await gh.singletonAsync<_i49.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i50.SignOutUseCase>(
        () => _i50.SignOutUseCase(repo: gh<_i28.LoginRepo>()));
    gh.singleton<_i51.AppRouter>(() => _i51.AppRouter(gh<_i3.AuthService>()));
    gh.singleton<_i52.AuthorizationBloc>(() => _i52.AuthorizationBloc(
          loginUseCase: gh<_i30.LoginUseCase>(),
          signOutUseCase: gh<_i50.SignOutUseCase>(),
        ));
    gh.factory<_i53.DetailRecipeRepo>(() => _i54.DetailRecipeRepoImpl(
          gh<_i36.RecipeDetailDataSource>(),
          gh<_i4.Converter<_i20.RecipeDetailModel, _i21.RecipeDetailEntity>>(),
        ));
    gh.factory<_i55.HomeDataSource>(
        () => _i56.HomeDataSourceImpl(gh<_i25.HttpClient>()));
    gh.factory<_i57.HomeRepo>(() => _i58.HomeRecipeRepositoryImpl(
          gh<_i55.HomeDataSource>(),
          gh<_i4.Converter<_i5.RecipeModel, _i6.RecipeEntity>>(),
        ));
    gh.singleton<_i59.MyRecipeHomeUseCase>(
        () => _i59.MyRecipeHomeUseCase(repo: gh<_i33.ProfileRepo>()));
    gh.factory<_i60.ProfileBloc>(() => _i60.ProfileBloc(
          gh<_i35.ProfileUseCase>(),
          gh<_i59.MyRecipeHomeUseCase>(),
          gh<_i43.SavedRecipeHomeUseCase>(),
        ));
    gh.singleton<_i61.PutLikeUseCase>(
        () => _i61.PutLikeUseCase(repo: gh<_i53.DetailRecipeRepo>()));
    gh.singleton<_i62.PutSaveUseCase>(
        () => _i62.PutSaveUseCase(repo: gh<_i53.DetailRecipeRepo>()));
    gh.singleton<_i63.RecipeHomeUseCase>(
        () => _i63.RecipeHomeUseCase(repo: gh<_i57.HomeRepo>()));
    gh.singleton<_i64.RegistrationBloc>(() => _i64.RegistrationBloc(
        registrationUseCase: gh<_i42.RegistrationUseCase>()));
    gh.singleton<_i65.SearchChefshUseCase>(
        () => _i65.SearchChefshUseCase(repo: gh<_i46.SearchRepo>()));
    gh.singleton<_i66.SearchRecipesUseCase>(
        () => _i66.SearchRecipesUseCase(repo: gh<_i46.SearchRepo>()));
    gh.singleton<_i67.DetaiRecipeUseCase>(
        () => _i67.DetaiRecipeUseCase(repo: gh<_i53.DetailRecipeRepo>()));
    gh.factory<_i68.DetailRecipeBloc>(() => _i68.DetailRecipeBloc(
          gh<_i67.DetaiRecipeUseCase>(),
          gh<_i61.PutLikeUseCase>(),
          gh<_i62.PutSaveUseCase>(),
        ));
    gh.factory<_i69.HomeBloc>(
        () => _i69.HomeBloc(gh<_i63.RecipeHomeUseCase>()));
    gh.factory<_i70.SearchBloc>(() => _i70.SearchBloc(
          gh<_i66.SearchRecipesUseCase>(),
          gh<_i65.SearchChefshUseCase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i71.RegisterModule {}
