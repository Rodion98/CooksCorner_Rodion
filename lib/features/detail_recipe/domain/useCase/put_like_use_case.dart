import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/repository/repository.dart';

@singleton
class PutLikeUseCase {
  final DetailRecipeRepo repo;

  PutLikeUseCase({required this.repo});

  Future<void> call(int? params) async {
    await repo.putLike(params);
  }
}
