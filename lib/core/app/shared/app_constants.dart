part of io_ui;

class Constants {
  static const baseUrl = 'https://ramazan-imashov-auth.pp.ua';

  /// Auth
  static const registration = '$baseUrl/api/v1/account/register/';
  static const login = '$baseUrl/api/v1/account/login/';
  static const logout = '$baseUrl/api/v1/account/logout/';

  static List<String> titlesForHome = [t.Breakfast, t.Lunch, t.Dinner];
  static List<Tab> tabsHome = Constants.titlesForHome.map((title) => Tab(text: title)).toList();

  static List<String> titlesForProfile = [t.MyRecipe, t.SavedRecipe];
  static List<Tab> tabsProfile = Constants.titlesForProfile.map((title) => Tab(text: title)).toList();

  static List<String> titlesForSearch = [t.Chefs, t.Recipes];
  static List<Tab> tabsSearch = Constants.titlesForSearch.map((title) => Tab(text: title)).toList();

  static List<String> titlesForCreate = [t.Easy, t.Medium, t.Hard];
  static List<Tab> tabsCreate = Constants.titlesForCreate
      .map((title) => Tab(
            text: title,
          ))
      .toList();
}

enum MealLabel {
  Breakfast('Breakfast'),
  Lunch('Lunch'),
  Dinner('Dinner');

  const MealLabel(this.label);
  final String label;
  final Color color = AppColors.iconFaded;
}
