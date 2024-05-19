import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/domain/useCase/registration_use_case.dart';

part 'registration_event.dart';
part 'registration_state.dart';

@singleton
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> with PasswordValidation {
  final RegistrationUseCase registrationUseCase;

  RegistrationBloc({required this.registrationUseCase})
      : super(
          RegistrationState(
            ValidationModel.initial(),
          ),
        ) {
    on<ValidationPassword>(_validationPassword);
    on<ValidationEmail>(_validationEmail);
    on<ValidationLogin>(_validationLogin);
    on<ValidationPasswordRepeat>(_validationPasswordRepeat);

    on<Registration>(_registration);
  }

  Future<void> _registration(
    Registration event,
    Emitter<RegistrationState> emit,
  ) async {
    final registrationModel = event.registrationModel;
    await registrationUseCase.call(
      registrationModel,
    );
  }

  void _validationPasswordRepeat(
    ValidationPasswordRepeat event,
    Emitter<RegistrationState> emit,
  ) {
    final password = event.passwordRepeat;
    String firstPassword = state.validationModel.password;
    final similar = passwordsValid(
      password,
      firstPassword,
    );
    print(password);
    print(firstPassword);
    print(similar);
    emit(
      RegistrationState(
        state.validationModel.copyWith(
          passwordSimilar: similar,
          passwordRepeat: password,
        ),
      ),
    );
  }

  void _validationLogin(
    ValidationLogin event,
    Emitter<RegistrationState> emit,
  ) {
    final login = event.login;
    final boolLogin = login.isNotEmpty;
    print(login);
    print(boolLogin);

    emit(
      RegistrationState(
        state.validationModel.copyWith(
          login: boolLogin,
          loginString: login,
        ),
      ),
    );
  }

  void _validationEmail(
    ValidationEmail event,
    Emitter<RegistrationState> emit,
  ) {
    final email = event.email;
    final boolEmail = emailValidation(
      email,
    );
    print(email);
    print(boolEmail);

    emit(
      RegistrationState(
        state.validationModel.copyWith(
          emailString: email,
          email: boolEmail,
        ),
      ),
    );
  }

  void _validationPassword(
    ValidationPassword event,
    Emitter<RegistrationState> emit,
  ) {
    final password = event.password;
    final specChar = hasSpecialChar(
      password,
    );
    final lenght = isValidLength(
      password,
    );
    final number = hasDigit(
      password,
    );
    final upperCase = hasAlphabetic(
      password,
    );
    print(specChar);
    print(lenght);
    print(number);
    print(upperCase);
    print(password);
    emit(
      RegistrationState(
        state.validationModel.copyWith(
          lenght: lenght,
          number: number,
          specChar: specChar,
          upperCase: upperCase,
          password: password,
        ),
      ),
    );
  }
}
