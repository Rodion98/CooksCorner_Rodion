part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState({
    required final StateStatus stateStatus,
    required final bool buttonStatus,
  }) = _AuthorizationState;

  // const factory Validation({
  //   required final bool buttonStatus,
  // }) = _Validation;
}
