import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/bloc/authorization_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/bloc/home_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/presentation/bloc/registration_bloc.dart';
import 'package:neobis_flutter_cooks_corner_rodion/injection/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(AppColors.primary);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthorizationBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<RegistrationBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: getIt<AppRouter>().config(),
      ),
    );
  }
}
