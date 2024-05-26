part of 'search_bloc.dart';

class SearchState {
  final SearchStateModel stateModel;

  SearchState(this.stateModel);
}

class SearchStateModel {
  final List<SearchChefsEntity> chefs;
  final List<SearchRecipeEntity> recipes;
  final int index;
  final String message;
  final StateStatus stateStatus;

  SearchStateModel({
    required this.chefs,
    required this.recipes,
    required this.index,
    required this.message,
    required this.stateStatus,
  });

  factory SearchStateModel.initial() {
    return SearchStateModel(
      index: 0,
      chefs: [],
      recipes: [],
      message: '',
      stateStatus: StateStatus.initial(),
    );
  }
  SearchStateModel copyWith(
      {List<SearchChefsEntity>? chefs,
      List<SearchRecipeEntity>? recipes,
      int? index,
      String? message,
      StateStatus? stateStatus}) {
    return SearchStateModel(
        index: index ?? this.index,
        chefs: chefs ?? this.chefs,
        recipes: recipes ?? this.recipes,
        message: message ?? this.message,
        stateStatus: stateStatus ?? this.stateStatus);
  }
}
