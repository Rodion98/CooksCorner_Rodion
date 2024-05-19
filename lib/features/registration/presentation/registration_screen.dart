import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/data/models/registration_model/registration_model.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final name = TextEditingController();
  final gmail = TextEditingController();
  final password = TextEditingController();
  final rePassword = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    gmail.dispose();
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.primary,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          ColoredContainer(
            t.SignupTitle1,
            t.SignupTitle2,
            '',
            0.27,
          ),
          SizedBox(height: 36),
          _builldTextFields(),
          SizedBox(height: 24),
          _buildButton(),
          Spacer(),
          _buildTextButton(),
        ]),
      ),
    );
  }

  BlocBuilder<RegistrationBloc, RegistrationState> _buildButton() {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        print(state.validationModel.isButtonAvailable);
        return state.validationModel.isButtonAvailable
            ? MyElevatedButtonWidget(
                text: t.SignUp,
                onTap: () {
                  final registrationModel = RegistrationModel(
                    name: state.validationModel.loginString,
                    email: state.validationModel.emailString,
                    password: state.validationModel.password,
                    confirmPassword: state.validationModel.passwordRepeat,
                  );

                  context.read<RegistrationBloc>().add(
                        Registration(
                          registrationModel: registrationModel,
                        ),
                      );
                  // AutoRouter.of(context).replace(
                  //   AuthorizationRoute(),
                  // );
                },
              )
            : MyElevatedButtonWidget(text: t.SignUp);
      },
    );
  }

  Padding _buildTextButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: MyTextButtonWidget(
          onTap: () {
            AutoRouter.of(context).replace(
              AuthorizationRoute(),
            );
          },
          text: t.HaveAnAccount),
    );
  }

  Padding _builldTextFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildName(),
            SizedBox(height: 16),
            _buildEmail(),
            SizedBox(height: 16),
            _buildPassword(),
            SizedBox(height: 16),
            _buildRePassword(),
          ],
        ),
      ),
    );
  }

  MyTextFieldWidget _buildRePassword() {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<RegistrationBloc>().add(
              ValidationPasswordRepeat(
                passwordRepeat: value,
              ),
            );
      },
      hintText: t.RePassword,
      obscure: true,
      controller: rePassword,
      suffixIcon: [Icons.visibility, Icons.visibility_off],
      label: true,
    );
  }

  MyTextFieldWidget _buildPassword() {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<RegistrationBloc>().add(
              ValidationPassword(
                password: value,
              ),
            );
      },
      hintText: t.Password,
      obscure: true,
      controller: password,
      suffixIcon: [Icons.visibility, Icons.visibility_off],
      label: true,
    );
  }

  MyTextFieldWidget _buildEmail() {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<RegistrationBloc>().add(
              ValidationEmail(
                email: value,
              ),
            );
      },
      hintText: t.Gmail,
      controller: gmail,
      suffixIcon: [Icons.alternate_email],
      label: true,
    );
  }

  MyTextFieldWidget _buildName() {
    return MyTextFieldWidget(
      onChanged: (value) {
        context.read<RegistrationBloc>().add(
              ValidationLogin(
                login: value,
              ),
            );
      },
      hintText: t.Name,
      obscure: false,
      controller: name,
      suffixIcon: [Icons.person_2_outlined],
      label: true,
    );
  }
}
