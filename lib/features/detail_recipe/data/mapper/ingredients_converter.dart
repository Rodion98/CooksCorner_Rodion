import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/data/models/ingredients_model.dart/ingredients_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/ingredients_entity.dart';

@Injectable(as: Converter<IngredientsModel, IngredientsEntity>)
class RecipeHomeMapper extends Converter<IngredientsModel, IngredientsEntity> {
  @override
  IngredientsEntity convert(IngredientsModel input) {
    return IngredientsEntity(
      id: input.id,
      amount: input.amount,
      name: input.name,
      unitOfMeasurement: input.unitOfMeasurement,
    );
  }
}
