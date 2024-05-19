class HttpPaths {
  static const baseUrl = 'https://supportive-love-cook2.up.railway.app';

  /// Auth
  static const registration = '$baseUrl/api/auth/register';
  static const authorization = '$baseUrl/api/auth/login';

  static const refreshToken = '$baseUrl/accounts/refresh/';

  /// Products
  static const acceptance = '$baseUrl/products/acceptance/';
  static const getStorages = '$baseUrl/products/storages';
  static getWheelById(int wheelId) => '$baseUrl/products/wheels/$wheelId';
  static getStoryById(int storageId) => '$baseUrl/products/storages/$storageId';

  /// Actions
  static const getActions = '$baseUrl/actions/';
  static getSaleById(int saleId) => '$baseUrl/actions/sales/$saleId';
}
