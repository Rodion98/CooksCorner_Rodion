import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/use_case/use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/domain/repository/repository.dart';

@singleton
class RegistrationUseCase extends UseCase<void, RegistrationModel> {
  final RegistrationRepo repo;

  RegistrationUseCase({
    required this.repo,
  });

  @override
  Future<Either<Failure, void>> call(RegistrationModel? params) async {
    await repo.registration(params);
    return Right(null);
  }
}
