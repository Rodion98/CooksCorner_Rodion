import 'package:fpdart/fpdart.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/success.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/models/login_model/login_model.dart';

abstract class LoginRepo {
  Future<Either<Failure, Success>> login(
    LoginModel loginModel,
  );

  Future<Either<Failure, Success>> signOut();
}
