import 'dart:async';

import 'package:flutter/material.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/app.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/app_routes.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/network/entity/failure.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/services/auth_service.dart';
import 'package:neobis_flutter_cooks_corner_rodion/injection/injection.dart';

FutureOr<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();

      await getIt<AuthService>().recoverUser();

      runApp(const MyApp());
    },
    (error, stackTrace) {
      if (error is Authorization) {
        if (getIt<AppRouter>().current.name != AuthorizationRoute.name) {
          print(getIt<AppRouter>().current.name);
          getIt<AppRouter>().push(
            const AuthorizationRoute(),
          );
        }
      }
    },
  );
}
