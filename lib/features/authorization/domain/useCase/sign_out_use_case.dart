import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/use_case/use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/repository/repository.dart';

@singleton
class SignOutUseCase extends UseCase<void, void> {
  final LoginRepo repo;

  SignOutUseCase({
    required this.repo,
  });

  @override
  Future<void> call(params) async {
    await repo.signOut();
  }
}
