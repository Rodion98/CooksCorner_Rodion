import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/app/router/auth_route_guard.dart';
import 'package:neobis_flutter_cooks_corner_rodion/core/services/auth_service.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/authorization/presentation/auth_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/bottom_menu/bottom_menu_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/create_recipe/presentation/create_recipe_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/detail_recipe/presentation/detail_recipe_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/home/presentation/home_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/manage_profile/presentation/manage_profile_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/profile/presentation/profile_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/registration/presentation/registration_screen.dart';
import 'package:neobis_flutter_cooks_corner_rodion/features/search/presentation/search_screen.dart';

part 'app_routes.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  final AuthService authService;

  AppRouter(this.authService);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthorizationRoute.page,
          path: '/authorization',
          initial: true,
        ),
        AutoRoute(
          page: DetailRecipeRoute.page,
          path: '/detailRecipe',
          // initial: true,
        ),
        AutoRoute(
          page: RegistrationRoute.page,
          path: '/registration',
          // initial: true,
        ),
        AutoRoute(
          page: ManageProfileRoute.page,
          path: '/manage',
          // initial: true,
        ),
        AutoRoute(
          page: CreateRecipeRoute.page,
          path: '/create',
          // initial: true,
        ),
        AutoRoute(
          page: BottomMenuRoute.page,
          // initial: true,
          guards: [
            // AuthGuard(authService: authService),
          ],
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
      ];
}
