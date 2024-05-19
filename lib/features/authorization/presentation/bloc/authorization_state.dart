part of 'authorization_bloc.dart';

class AuthorizationState {
  final SignInValidationModel signInModel;

  AuthorizationState(this.signInModel);
}

class Initial extends AuthorizationState {
  Initial(super.signInModel);
}

class Validation extends AuthorizationState {
  Validation(
    super.signInModel,
  );
}

class SignInValidationModel {
  final String password;
  final bool passwordNotEmpty;
  final bool emailNotEmpty;
  final String emailString;

  SignInValidationModel({
    required this.password,
    required this.passwordNotEmpty,
    required this.emailNotEmpty,
    required this.emailString,
  });

  bool get isButtonAvailable {
    return passwordNotEmpty && emailNotEmpty;
  }

  factory SignInValidationModel.initial() {
    return SignInValidationModel(password: '', emailNotEmpty: false, emailString: '', passwordNotEmpty: false);
  }

  SignInValidationModel copyWith({
    String? password,
    bool? passwordNotEmpty,
    bool? emailNotEmpty,
    String? emailString,
  }) {
    return SignInValidationModel(
      password: password ?? this.password,
      passwordNotEmpty: passwordNotEmpty ?? this.passwordNotEmpty,
      emailNotEmpty: emailNotEmpty ?? this.emailNotEmpty,
      emailString: emailString ?? this.emailString,
    );
  }
}
