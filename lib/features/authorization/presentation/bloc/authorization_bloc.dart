import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/models/login_model/login_model.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> with PasswordValidation {
  AuthorizationBloc()
      : super(
          AuthorizationState(
            SignInValidationModel.initial(),
          ),
        ) {
    on<ValidationPassword>(_validationPassword);
    on<ValidationEmail>(_validationEmail);
    on<SignIn>(_signIn);
  }

  Future<void> _signIn(
    SignIn event,
    Emitter<AuthorizationState> emit,
  ) async {
    final loginModel = LoginModel(
      email: state.signInModel.emailString,
      password: password,
    );
    final result = await loginUseCase.call(
      loginModel,
    );
    result.fold((l) {
      emit(
        state.copyWith(
          stateStatus: StateStatus.failure(
            message: l.message ?? l.toString(),
          ),
        ),
      );
    }, (r) {
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
        ),
      );
    });
  }

  void _validationEmail(
    ValidationEmail event,
    Emitter<AuthorizationState> emit,
  ) {
    final email = event.email;
    final emailNotEmpty = email.isNotEmpty;

    emit(
      AuthorizationState(
        state.signInModel.copyWith(
          emailString: email,
          emailNotEmpty: emailNotEmpty,
        ),
      ),
    );
  }

  void _validationPassword(
    ValidationPassword event,
    Emitter<AuthorizationState> emit,
  ) {
    final password = event.password;
    final passwordNotEmpty = password.isNotEmpty;
    emit(
      AuthorizationState(
        state.signInModel.copyWith(password: password, passwordNotEmpty: passwordNotEmpty),
      ),
    );
  }
}
