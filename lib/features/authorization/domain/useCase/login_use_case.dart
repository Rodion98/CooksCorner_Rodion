import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/success.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/on_repository_exception.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/repository/repository.dart';

@singleton
class LoginUseCase {
  final LoginRepo repo;

  LoginUseCase({
    required this.repo,
  });

  Future<Either<Failure, Success>> call(LoginModel params) async {
    try {
      await repo.login(params);
      return Success.right;
    } catch (e) {
      return onRepositoryException(e);
    }
  }
}
