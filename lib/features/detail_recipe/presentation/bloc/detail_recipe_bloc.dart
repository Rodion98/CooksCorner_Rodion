import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/entity/recipe_home_entity.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/detail_recipe_use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/put_like_use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/domain/useCase/put_save_use_case.dart';

part 'detail_recipe_event.dart';
part 'detail_recipe_state.dart';
part 'detail_recipe_bloc.freezed.dart';

@injectable
class DetailRecipeBloc extends Bloc<DetailRecipeEvent, DetailRecipeState> {
  final DetaiRecipeUseCase detaiRecipeUseCase;
  final PutLikeUseCase putLikeUseCase;
  final PutSaveUseCase putSaveUseCase;

  DetailRecipeBloc(this.detaiRecipeUseCase, this.putLikeUseCase, this.putSaveUseCase)
      : super(DetailRecipeState(stateStatus: StateStatus.initial(), recipeDetailEntity: null)) {
    on<_GetRecipeDetail>(_onGetRecipeDetail);
    on<_PutLike>(_onPutLike);
    on<_PutSave>(_onPutSave);
  }

  FutureOr<void> _onGetRecipeDetail(_GetRecipeDetail event, Emitter<DetailRecipeState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    final result = await detaiRecipeUseCase.call(event.id);
    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(), recipeDetailEntity: r));
    });
  }

  Future<void> _onPutLike(_PutLike event, Emitter<DetailRecipeState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    await putLikeUseCase.call(event.id);
  }

  Future<void> _onPutSave(_PutSave event, Emitter<DetailRecipeState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));
    await putSaveUseCase.call(event.id);
  }
}
