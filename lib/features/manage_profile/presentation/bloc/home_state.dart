part of 'home_bloc.dart';

// @freezed
// class HomeState with _$HomeState {
//   const factory HomeState.loading({
//     required List<Tab> tabs,
//   }) = _HomeStateLoading;
//   const factory HomeState.success({required List<Tab> tabs, required int index}) = _HomeStateSuccess;
//   const factory HomeState.failure() = _HomeStateFailure;
// }

class HomeState {
  final HomeStateModel stateModel;
  HomeState(this.stateModel);
}

// final List<Tab> tabs = Constants.titles.map((title) => Tab(text: title)).toList();

class HomeStateModel {
  final List<RecipeEntity> recipes;
  final int index;
  // final List<Tab> tabs;

  // final List<Tab> tabs = Constants.titles.map((title) => Tab(text: title)).toList();

  HomeStateModel({
    required this.recipes,
    required this.index,
  });

  factory HomeStateModel.initial() {
    // final List<Tab> tabs = Constants.titles.map((title) => Tab(text: title)).toList();
    return HomeStateModel(
      index: 0,
      recipes: [],
    );
  }

  HomeStateModel copyWith({List<RecipeEntity>? recipes, int? index, List<Tab>? tabs}) {
    return HomeStateModel(
      index: index ?? this.index,
      recipes: recipes ?? this.recipes,

      // tabs: tabs ?? this.tabs,
    );
  }
}
