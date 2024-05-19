import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/auth_info.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/models/login_model/login_model.dart';

abstract class LoginDataSource {
  Future<AuthData> login({
    required LoginModel loginModel,
  });
}
