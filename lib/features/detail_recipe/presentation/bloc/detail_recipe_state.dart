part of 'detail_recipe_bloc.dart';

@freezed
class DetailRecipeState with _$DetailRecipeState {
  const factory DetailRecipeState({
    required final StateStatus stateStatus,
    required RecipeDetailEntity? recipeDetailEntity,
  }) = _DetailRecipeState;
}
