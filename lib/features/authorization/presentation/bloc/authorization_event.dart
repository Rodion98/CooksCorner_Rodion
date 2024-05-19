part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.started() = _Started;
  const factory AuthorizationEvent.login({
    required String email,
    required String password,
  }) = _Login;
  const factory AuthorizationEvent.signOut() = _SignOut;
  const factory AuthorizationEvent.buttonAvailable(
    String email,
    String password,
  ) = _ButtonAvailable;
}
