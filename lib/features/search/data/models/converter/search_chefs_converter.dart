import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/data/models/search_chefs_model/search_chefs_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/domain/entity/search_chefs_entity.dart';

@Injectable(as: Converter<SearchChefsModel, SearchChefsEntity>)
class SearchChefsConverter extends Converter<SearchChefsModel, SearchChefsEntity> {
  @override
  SearchChefsEntity convert(SearchChefsModel input) {
    return SearchChefsEntity(id: input.id, name: input.name, photoUrl: input.photoUrl);
  }
}
