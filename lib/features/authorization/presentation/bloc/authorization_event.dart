part of 'authorization_bloc.dart';

abstract class AuthorizationEvent {}

class ValidationPassword extends AuthorizationEvent {
  final String password;

  ValidationPassword({
    required this.password,
  });
}

class ValidationEmail extends AuthorizationEvent {
  final String email;
  ValidationEmail({
    required this.email,
  });
}

class SignIn extends AuthorizationEvent {
  final String password;
  final String email;

  SignIn({
    required this.password,
    required this.email,
  });
}
