import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/entity/profile_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/domain/repository/repository.dart';

@singleton
class ProfileUseCase {
  final ProfileRepo repo;

  ProfileUseCase({required this.repo});

  Future<Either<Failure, ProfileEntity>> call(params) async {
    var entity = await repo.getProfile();
    return entity;
  }
}
