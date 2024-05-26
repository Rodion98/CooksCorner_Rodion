import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/domain/useCase/home_recipe_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RecipeHomeUseCase recipeHomeUseCase;

  HomeBloc(this.recipeHomeUseCase) : super(HomeState(HomeStateModel.initial())) {
    on<Load>(_onLoad);
  }

  FutureOr<void> _onLoad(Load event, Emitter<HomeState> emit) async {
    emit(HomeState(state.stateModel.copyWith(loading: true)));
    final meal = MealLabel.values[event.index].label;
    final result = await recipeHomeUseCase.call(meal);
    print(result);

    result.fold((l) {
      emit(HomeState(state.stateModel.copyWith(message: l.message ?? l.toString())));
    }, (r) {
      emit(HomeState(state.stateModel.copyWith(recipes: r)));
    });
  }
}
