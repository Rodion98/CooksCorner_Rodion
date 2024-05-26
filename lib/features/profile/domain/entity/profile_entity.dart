class ProfileEntity {
  final int? id;
  final String? imageUrl;
  final String? name;
  final int? recipeQuantity;
  final int? followerQuantity;
  final int? followingQuantity;
  final String? biography;

  ProfileEntity({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.recipeQuantity,
    required this.followerQuantity,
    required this.followingQuantity,
    required this.biography,
  });
}
