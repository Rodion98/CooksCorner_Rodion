import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/io_ui.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/widgets/topSnackBar/custom_snack_bar.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/widgets/topSnackBar/top_snack_bar.dart';
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
  final _formKey = GlobalKey<FormState>();
  bool isObcsure = true;
  bool isButtonEnabled = false;
  bool isButtonDisabled = false;
  static const int buttonDisableDuration = 2;

  @override
  void dispose() {
    gmail.dispose();
    password.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = gmail.text.isNotEmpty && password.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    gmail.addListener(_updateButtonState);
    password.addListener(_updateButtonState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<AuthorizationBloc, AuthorizationState>(
        listener: _listenerBloc,
        child: Form(
          key: _formKey,
          child: Column(children: [
            ColoredContainer(
              t.welcomeBack,
              t.CooksCorner,
              '',
              0.27,
            ),
            SizedBox(height: 36),
            _buildTextFields(),
            Spacer(),
            _buildTextButton()
          ]),
        ),
      ),
    );
  }

  void _listenerBloc(
    BuildContext context,
    AuthorizationState state,
  ) {
    state.stateStatus.whenOrNull(
      success: (val) => AutoRouter.of(context).replace(
        const BottomMenuRoute(),
      ),
      failure: (msg) {
        showTopSnackBar(
          Overlay.of(context),
          CustomSnackBar.error(
            message: msg,
          ),
          dismissType: DismissType.onSwipe,
          dismissDirection: [DismissDirection.up],
        );
      },
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

  Padding _buildTextFields() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            MyTextFieldWidget(
              hintText: t.Gmail,
              obscure: false,
              controller: gmail,
              suffixIcon: [Icons.alternate_email],
              label: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Gmail';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            MyTextFieldWidget(
              obscure: isObcsure,
              hintText: t.Password,
              controller: password,
              suffixIcon: [Icons.visibility, Icons.visibility_off],
              label: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Password';
                }
                return null;
              },
            ),
            SizedBox(height: 24),
            MyElevatedButtonWidget(
              text: t.SignIn,
              onTap: (isButtonEnabled && !isButtonDisabled)
                  ? () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          isButtonDisabled = true;
                        });
                        Timer(Duration(seconds: buttonDisableDuration), () {
                          setState(() {
                            isButtonDisabled = false;
                          });
                        });
                        final String enteredPassword = password.text;
                        final String enteredUsername = gmail.text;
                        context.read<AuthorizationBloc>().add(
                              AuthorizationEvent.login(
                                password: enteredPassword,
                                email: enteredUsername,
                              ),
                            );
                      }
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
