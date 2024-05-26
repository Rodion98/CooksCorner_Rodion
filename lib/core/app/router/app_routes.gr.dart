// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthorizationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AuthorizationScreen(),
      );
    },
    BottomMenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomMenuScreen(),
      );
    },
    CreateRecipeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CreateRecipeScreen(),
      );
    },
    DetailRecipeRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRecipeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailRecipeScreen(id: args.id),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ManageProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ManageProfileScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegistrationScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchScreen(),
      );
    },
  };
}

/// generated route for
/// [AuthorizationScreen]
class AuthorizationRoute extends PageRouteInfo<void> {
  const AuthorizationRoute({List<PageRouteInfo>? children})
      : super(
          AuthorizationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BottomMenuScreen]
class BottomMenuRoute extends PageRouteInfo<void> {
  const BottomMenuRoute({List<PageRouteInfo>? children})
      : super(
          BottomMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomMenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CreateRecipeScreen]
class CreateRecipeRoute extends PageRouteInfo<void> {
  const CreateRecipeRoute({List<PageRouteInfo>? children})
      : super(
          CreateRecipeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateRecipeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailRecipeScreen]
class DetailRecipeRoute extends PageRouteInfo<DetailRecipeRouteArgs> {
  DetailRecipeRoute({
    required int? id,
    List<PageRouteInfo>? children,
  }) : super(
          DetailRecipeRoute.name,
          args: DetailRecipeRouteArgs(id: id),
          initialChildren: children,
        );

  static const String name = 'DetailRecipeRoute';

  static const PageInfo<DetailRecipeRouteArgs> page =
      PageInfo<DetailRecipeRouteArgs>(name);
}

class DetailRecipeRouteArgs {
  const DetailRecipeRouteArgs({required this.id});

  final int? id;

  @override
  String toString() {
    return 'DetailRecipeRouteArgs{id: $id}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ManageProfileScreen]
class ManageProfileRoute extends PageRouteInfo<void> {
  const ManageProfileRoute({List<PageRouteInfo>? children})
      : super(
          ManageProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManageProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegistrationScreen]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
