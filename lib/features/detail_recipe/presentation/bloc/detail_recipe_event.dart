part of 'detail_recipe_bloc.dart';

@freezed
class DetailRecipeEvent with _$DetailRecipeEvent {
  const factory DetailRecipeEvent.getRecipeDetail(int? id) = _GetRecipeDetail;
  const factory DetailRecipeEvent.putSave(int? id) = _PutSave;
  const factory DetailRecipeEvent.putLike(int? id) = _PutLike;
}
