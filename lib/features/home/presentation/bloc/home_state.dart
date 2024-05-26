part of 'home_bloc.dart';

class HomeState {
  final HomeStateModel stateModel;

  HomeState(this.stateModel);
}

class HomeStateModel {
  final List<RecipeEntity> recipes;
  final int index;
  final bool loading;
  final String message;

  HomeStateModel({
    required this.recipes,
    required this.index,
    required this.loading,
    required this.message,
  });

  factory HomeStateModel.initial() {
    return HomeStateModel(
      index: 0,
      recipes: [],
      loading: true,
      message: '',
    );
  }
  HomeStateModel copyWith({List<RecipeEntity>? recipes, int? index, bool? loading, String? message}) {
    return HomeStateModel(
        index: index ?? this.index,
        recipes: recipes ?? this.recipes,
        loading: loading ?? this.loading,
        message: message ?? this.message);
  }
}
