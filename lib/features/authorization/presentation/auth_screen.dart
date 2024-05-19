import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/gen/strings.g.dart';

@RoutePage()
class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final gmail = TextEditingController();
  final password = TextEditingController();
  bool isObcsure = true;

  @override
  void dispose() {
    gmail.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
          ColoredContainer(
            t.welcomeBack,
            t.CooksCorner,
            '',
            0.27,
          ),
          SizedBox(height: 36),
          _billdTextFields(),
          Spacer(),
          _buildTextButton()
        ]),
      ),
    );
  }

  Padding _buildTextButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: MyTextButtonWidget(
          onTap: () {
            AutoRouter.of(context).replace(
              RegistrationRoute(),
            );
          },
          text: t.Signup),
    );
  }

  Padding _billdTextFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyTextFieldWidget(
              onChanged: (value) {
                context.read<AuthorizationBloc>().add(
                      ValidationPassword(
                        password: value,
                      ),
                    );
              },
              hintText: t.Gmail,
              obscure: false,
              controller: gmail,
              suffixIcon: [Icons.alternate_email],
              label: true,
            ),
            SizedBox(height: 16),
            MyTextFieldWidget(
              onChanged: (value) {
                context.read<AuthorizationBloc>().add(
                      ValidationEmail(
                        email: value,
                      ),
                    );
              },
              obscure: isObcsure,
              hintText: t.Password,
              controller: password,
              suffixIcon: [Icons.visibility, Icons.visibility_off],
              label: true,
            ),
            SizedBox(height: 24),
            BlocBuilder<AuthorizationBloc, AuthorizationState>(
              builder: (context, state) {
                return state.signInModel.isButtonAvailable
                    ? MyElevatedButtonWidget(
                        text: t.SignIn,
                        onTap: () {},
                      )
                    : MyElevatedButtonWidget(text: t.SignIn);
              },
            ),
          ],
        ),
      ),
    );
  }
}
