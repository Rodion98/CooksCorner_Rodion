part of 'home_bloc.dart';

abstract class HomeEvent {}

class Load extends HomeEvent {
  final int index;
  Load({required this.index});
}

class HomeLoad extends HomeEvent {
  final int index;
  HomeLoad({required this.index});
}


// @freezed
// class HomeEvent with _$HomeEvent {
//   const factory HomeEvent.loading({int? index}) = _LoadRecipes;
// }
