part of 'search_bloc.dart';

abstract class SearchEvent {}

class Search extends SearchEvent {
  final String? query;
  final int? type;
  Search({required this.query, required this.type});
}

class ClearSearchResults extends SearchEvent {}
