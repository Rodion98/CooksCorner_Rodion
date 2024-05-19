class RecipeEntity {
  final int? id;
  final String? name;
  final String? author;
  final int? likes;
  final int? favorites;
  final int? time;
  final String? level;
  final String? description;
  final List<String>? ingridients;
  final String? image_url;

  RecipeEntity({
    required this.id,
    required this.name,
    required this.author,
    required this.likes,
    required this.favorites,
    required this.time,
    required this.level,
    required this.description,
    required this.ingridients,
    required this.image_url,
  });
}
