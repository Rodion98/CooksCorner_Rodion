part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required final StateStatus stateStatus,
    required ProfileEntity? profileEntity,
    required List<RecipeEntity>? myRecipes,
    required List<RecipeEntity>? savedRedipes,
  }) = _ProfileState;
}
