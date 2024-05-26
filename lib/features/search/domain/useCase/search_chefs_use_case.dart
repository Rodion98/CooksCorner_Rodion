import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/repository/repository.dart';

@singleton
class SearchChefshUseCase {
  final SearchRepo repo;

  SearchChefshUseCase({required this.repo});

  Future<Either<Failure, List<SearchChefsEntity>>> call(String? query) async {
    var entity = await repo.geSearchChefs(query);
    return entity;
  }
}
