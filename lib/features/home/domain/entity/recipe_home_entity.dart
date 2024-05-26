class RecipeEntity {
  final int? id;
  final String? image;
  final String? recipeName;
  final String? author;
  final int? likesQuantity;
  final int? savesQuantity;
  final bool? isSaved;
  final bool? isLiked;

  RecipeEntity({
    required this.id,
    required this.image,
    required this.recipeName,
    required this.author,
    required this.likesQuantity,
    required this.savesQuantity,
    required this.isSaved,
    required this.isLiked,
  });
}
