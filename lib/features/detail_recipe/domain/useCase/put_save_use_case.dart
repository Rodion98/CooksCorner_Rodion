import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/repository/repository.dart';

@singleton
class PutSaveUseCase {
  final DetailRecipeRepo repo;

  PutSaveUseCase({required this.repo});

  Future<void> call(int? params) async {
    await repo.putSave(params);
  }
}
