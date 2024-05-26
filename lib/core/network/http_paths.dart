class HttpPaths {
  static const baseUrl = 'https://supportive-love-cook2.up.railway.app';

  static const registration = '$baseUrl/api/auth/register';
  static const authorization = '$baseUrl/api/auth/login';
  static const refreshToken = '$baseUrl/api/auth/refresh-token';

  /// Profile
  static const getMyProfile = '$baseUrl/api/users/get-my-profile';
  static const getMyRecipes = '$baseUrl/api/recipes/my-recipes';
  static const getMySavedRecipes = '$baseUrl/api/recipes/my-saved-recipes';

  /// Home Recipes
  static const getHomeRecipes = '$baseUrl/api/recipes/get-by-category';
  static const getDetailRecipe = '$baseUrl/api/recipes/get-by-id/';

  /// Search Recipes
  static const getSearchRecipes = '$baseUrl/api/recipes/search-recipe';
  static const getSearchChefs = '$baseUrl/api/users/search-user';

  ///  Recipes Actions
  static const putLike = '$baseUrl/api/actions/like/';
  static const putSave = '$baseUrl/api/actions/save/';
}
