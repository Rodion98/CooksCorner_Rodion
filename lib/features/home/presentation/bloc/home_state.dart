part of 'home_bloc.dart';

class HomeState {
  final HomeStateModel stateModel;

  HomeState(this.stateModel);
}

class HomeStateModel {
  final List<RecipeEntity> breakfastRecipes;
  final List<RecipeEntity> lunchRecipes;
  final List<RecipeEntity> dinnerRecipes;
  final int index;
  final bool loading;
  final String message;

  HomeStateModel({
    required this.breakfastRecipes,
    required this.lunchRecipes,
    required this.dinnerRecipes,
    required this.index,
    required this.loading,
    required this.message,
  });

  factory HomeStateModel.initial() {
    return HomeStateModel(
      index: 0,
      breakfastRecipes: [],
      dinnerRecipes: [],
      lunchRecipes: [],
      loading: true,
      message: '',
    );
  }
  HomeStateModel copyWith({
    List<RecipeEntity>? breakfastRecipes,
    List<RecipeEntity>? dinnerRecipes,
    List<RecipeEntity>? lunchRecipes,
    int? index,
    bool? loading,
    String? message,
  }) {
    return HomeStateModel(
        index: index ?? this.index,
        breakfastRecipes: breakfastRecipes ?? this.breakfastRecipes,
        dinnerRecipes: dinnerRecipes ?? this.dinnerRecipes,
        lunchRecipes: lunchRecipes ?? this.lunchRecipes,
        loading: loading ?? this.loading,
        message: message ?? this.message);
  }
}
