part of 'registration_bloc.dart';

abstract class RegistrationEvent {}

class ValidationPassword extends RegistrationEvent {
  final String password;

  ValidationPassword({
    required this.password,
  });
}

class ValidationEmail extends RegistrationEvent {
  final String email;
  ValidationEmail({
    required this.email,
  });
}

class ValidationLogin extends RegistrationEvent {
  final String login;
  ValidationLogin({
    required this.login,
  });
}

class ValidationPasswordRepeat extends RegistrationEvent {
  final String passwordRepeat;
  ValidationPasswordRepeat({
    required this.passwordRepeat,
  });
}

class Registration extends RegistrationEvent {
  final RegistrationModel registrationModel;
  Registration({
    required this.registrationModel,
  });
}
