import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/get_recipes_use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/useCase/profile_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCase profileUseCase;
  final MyRecipeHomeUseCase myRecipeHomeUseCase;

  ProfileBloc(
    this.profileUseCase,
    this.myRecipeHomeUseCase,
  ) : super(ProfileState(
          profileEntity: null,
          myRecipes: [],
          savedRedipes: [],
          stateStatus: StateStatus.initial(),
        )) {
    on<_GetProfile>(_onGetProfile);
    on<_GetRecipes>(_onGetRecipes);
  }

  FutureOr<void> _onGetProfile(_GetProfile event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    final result = await profileUseCase.call(null);

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), profileEntity: r));
    });
  }

  FutureOr<void> _onGetRecipes(_GetRecipes event, Emitter<ProfileState> emit) async {
    final result = await myRecipeHomeUseCase.call();

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (recipes) {
      final myRecipes = recipes['ny'] ?? [];
      final savedRecipes = recipes['saved'] ?? [];
      emit(state.copyWith(
        stateStatus: const StateStatus.success(),
        myRecipes: myRecipes,
        savedRedipes: savedRecipes,
      ));
    });
  }
}
