import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/state_status.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/data/models/login_model/login_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/useCase/login_use_case.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/domain/useCase/sign_out_use_case.dart';

part 'authorization_event.dart';
part 'authorization_state.dart';
part 'authorization_bloc.freezed.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  LoginUseCase loginUseCase;
  SignOutUseCase signOutUseCase;
  AuthorizationBloc({
    required this.loginUseCase,
    required this.signOutUseCase,
  }) : super(
          const AuthorizationState(
            buttonStatus: false,
            stateStatus: StateStatus.initial(),
          ),
        ) {
    on<_Login>(_onLogin);
    on<_SignOut>(_signOut);
    on<_ButtonAvailable>(_validation);
  }

  void _validation(
    _ButtonAvailable event,
    Emitter<AuthorizationState> emit,
  ) {
    bool email = event.email.isNotEmpty;
    bool password = event.password.isNotEmpty;
    bool buttonAvailable = password && email;
    emit(
      state.copyWith(buttonStatus: buttonAvailable),
    );
  }

  Future<void> _signOut(
    _SignOut event,
    Emitter<AuthorizationState> emit,
  ) async {
    await signOutUseCase.call(null);
    emit(
      state.copyWith(
        stateStatus: const StateStatus.success(),
      ),
    );
  }

  Future<void> _onLogin(
    _Login event,
    Emitter<AuthorizationState> emit,
  ) async {
    emit(
      state.copyWith(
        stateStatus: const StateStatus.loading(),
      ),
    );
    final email = event.email;
    final password = event.password;
    final loginModel = LoginModel(
      email: email,
      password: password,
    );
    final result = await loginUseCase.call(
      loginModel,
    );
    result.fold((l) {
      print('failure');
      print(l.toString());
      emit(
        state.copyWith(
          stateStatus: StateStatus.failure(
            message: l.message ?? l.toString(),
          ),
        ),
      );
    }, (r) {
      print('success');
      emit(
        state.copyWith(
          stateStatus: const StateStatus.success(),
        ),
      );
    });
  }
}
