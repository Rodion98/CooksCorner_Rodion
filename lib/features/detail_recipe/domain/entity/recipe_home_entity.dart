import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/ingredients_entity.dart';

class RecipeDetailEntity {
  final int? id;
  final String? recipeName;
  final String? imageUrl;
  final String? author;
  final String? cookingTime;
  final String? difficulty;
  final int? likeQuantity;
  final bool? isLiked;
  final bool? isSaved;
  final String? description;
  final List<IngredientsEntity> ingredients;

  RecipeDetailEntity(
      {required this.id,
      required this.recipeName,
      required this.imageUrl,
      required this.author,
      required this.cookingTime,
      required this.difficulty,
      required this.likeQuantity,
      required this.isLiked,
      required this.isSaved,
      required this.description,
      required this.ingredients});
}
