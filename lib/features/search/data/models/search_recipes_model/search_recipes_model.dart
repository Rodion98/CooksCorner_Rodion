import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_recipes_model.freezed.dart';
part 'search_recipes_model.g.dart';

@freezed
class SearchRecipesModel with _$SearchRecipesModel {
  const factory SearchRecipesModel({
    required int id,
    required String image,
    required String recipeName,
  }) = _SearchRecipesModel;

  factory SearchRecipesModel.fromJson(Map<String, dynamic> json) => _$SearchRecipesModelFromJson(json);
}
