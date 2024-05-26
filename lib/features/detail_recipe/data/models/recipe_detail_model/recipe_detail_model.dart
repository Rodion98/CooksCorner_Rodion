import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/ingredients_model.dart/ingredients_model.dart';

part 'recipe_detail_model.freezed.dart';
part 'recipe_detail_model.g.dart';

@freezed
class RecipeDetailModel with _$RecipeDetailModel {
  const factory RecipeDetailModel(
      {required int id,
      required String recipeName,
      required String imageUrl,
      required String author,
      required String cookingTime,
      required String difficulty,
      required int likeQuantity,
      required bool isLiked,
      required bool isSaved,
      required String description,
      required List<IngredientsModel> ingredients,
      required}) = _RecipeDetailModel;

  factory RecipeDetailModel.fromJson(Map<String, dynamic> json) => _$RecipeDetailModelFromJson(json);
}
