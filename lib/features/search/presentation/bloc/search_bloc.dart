import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_recipe_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/useCase/search_chefs_use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/useCase/search_recipes_use_case.dart';

part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRecipesUseCase searchRecipesUseCase;
  final SearchChefshUseCase searchChefshUseCase;

  SearchBloc(this.searchRecipesUseCase, this.searchChefshUseCase) : super(SearchState(SearchStateModel.initial())) {
    on<Search>(_onLoad);
    on<ClearSearchResults>(_onClearSearchResults);
  }

  FutureOr<void> _onLoad(Search event, Emitter<SearchState> emit) async {
    emit(SearchState(state.stateModel.copyWith(stateStatus: StateStatus.loading())));
    print(event.type);
    final query = event.query;
    if (event.type == 0) {
      final result = await searchChefshUseCase.call(query);
      print(result);
      result.fold((l) {
        emit(SearchState(state.stateModel.copyWith(message: l.message ?? l.toString())));
      }, (r) {
        emit(SearchState(state.stateModel.copyWith(chefs: r)));
      });
    } else if (event.type == 1) {
      final result = await searchRecipesUseCase.call(query);
      print(result);
      result.fold((l) {
        emit(SearchState(state.stateModel.copyWith(message: l.message ?? l.toString())));
      }, (r) {
        emit(SearchState(state.stateModel.copyWith(recipes: r)));
      });
    } else {
      null;
    }
  }

  FutureOr<void> _onClearSearchResults(ClearSearchResults event, Emitter<SearchState> emit) async {
    emit(SearchState(SearchStateModel.initial()));
  }
}
