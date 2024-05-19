part of 'registration_bloc.dart';

class RegistrationState {
  final ValidationModel validationModel;

  RegistrationState(this.validationModel);
}

class Initial extends RegistrationState {
  Initial(super.validationModel);
}

class Validation extends RegistrationState {
  Validation(
    super.validationModel,
  );
}

class ValidationModel {
  final bool? lenght;
  final bool? number;
  final bool? specChar;
  final bool? upperCase;
  final String password;
  final bool passwordSimilar;
  final String passwordRepeat;
  final bool email;
  final String emailString;
  final bool login;
  final String loginString;

  ValidationModel({
    required this.lenght,
    required this.number,
    required this.specChar,
    required this.upperCase,
    required this.password,
    required this.passwordSimilar,
    required this.passwordRepeat,
    required this.email,
    required this.emailString,
    required this.login,
    required this.loginString,
  });

  bool get allPasswordValid {
    return (lenght ?? false) && (number ?? false) && (specChar ?? false) && (upperCase ?? false);
  }

  bool get isButtonAvailable {
    return allPasswordValid && email && login && passwordSimilar;
  }

  factory ValidationModel.initial() {
    return ValidationModel(
        lenght: null,
        number: null,
        specChar: null,
        upperCase: null,
        password: '',
        passwordRepeat: '',
        email: false,
        emailString: '',
        login: false,
        loginString: '',
        passwordSimilar: false);
  }

  ValidationModel copyWith({
    bool? lenght,
    bool? number,
    bool? specChar,
    bool? upperCase,
    String? password,
    bool? passwordSimilar,
    String? passwordRepeat,
    bool? email,
    String? emailString,
    bool? login,
    String? loginString,
  }) {
    return ValidationModel(
        lenght: lenght ?? this.lenght,
        number: number ?? this.number,
        specChar: specChar ?? this.specChar,
        upperCase: upperCase ?? this.upperCase,
        passwordSimilar: passwordSimilar ?? this.passwordSimilar,
        password: password ?? this.password,
        email: email ?? this.email,
        login: login ?? this.login,
        emailString: emailString ?? this.emailString,
        loginString: loginString ?? this.loginString,
        passwordRepeat: passwordRepeat ?? this.passwordRepeat);
  }
}
