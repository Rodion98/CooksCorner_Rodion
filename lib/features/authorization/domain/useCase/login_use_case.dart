import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/success.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/use_case/use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/repository/repository.dart';

@singleton
class LoginUseCase extends UseCase<Either<Failure, Success>, LoginModel> {
  final LoginRepo repo;

  LoginUseCase({
    required this.repo,
  });

  @override
  Future<Either<Failure, Success>> call(
    LoginModel params,
  ) async {
    final result = await repo.login(
      params,
    );
    return result;
  }
}
