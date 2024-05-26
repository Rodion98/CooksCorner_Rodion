import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/repository/repository.dart';

@singleton
class SignOutUseCase {
  final LoginRepo repo;

  SignOutUseCase({
    required this.repo,
  });

  Future<void> call(params) async {
    await repo.signOut();
  }
}
