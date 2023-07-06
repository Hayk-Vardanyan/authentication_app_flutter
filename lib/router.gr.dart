// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:untitled3/pages/authentication_page/authentication_page.dart'
    as _i3;
import 'package:untitled3/pages/home_page/home_page.dart' as _i2;
import 'package:untitled3/pages/sign_in_page/sign_in_page.dart' as _i4;
import 'package:untitled3/pages/sign_up_page/sign_up_page.dart' as _i1;
import 'package:untitled3/pages/splash_screen/splash_screen.dart' as _i5;

abstract class $Router extends _i6.RootStackRouter {
  $Router({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.SignUpPage(
          key: args.key,
          username: args.username,
          email: args.email,
          password: args.password,
          onUsernameChanged: args.onUsernameChanged,
          onEmailChanged: args.onEmailChanged,
          onPasswordChanged: args.onPasswordChanged,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    AuthenticationRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthenticationPage(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SignInPage(
          key: args.key,
          username: args.username,
          password: args.password,
          onUsernameChanged: args.onUsernameChanged,
          onPasswordChanged: args.onPasswordChanged,
        ),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SplashScreenPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i7.Key? key,
    required String? username,
    required String? email,
    required String? password,
    required dynamic Function(String) onUsernameChanged,
    required dynamic Function(String) onEmailChanged,
    required dynamic Function(String) onPasswordChanged,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            key: key,
            username: username,
            email: email,
            password: password,
            onUsernameChanged: onUsernameChanged,
            onEmailChanged: onEmailChanged,
            onPasswordChanged: onPasswordChanged,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i6.PageInfo<SignUpRouteArgs> page =
      _i6.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    this.key,
    required this.username,
    required this.email,
    required this.password,
    required this.onUsernameChanged,
    required this.onEmailChanged,
    required this.onPasswordChanged,
  });

  final _i7.Key? key;

  final String? username;

  final String? email;

  final String? password;

  final dynamic Function(String) onUsernameChanged;

  final dynamic Function(String) onEmailChanged;

  final dynamic Function(String) onPasswordChanged;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, username: $username, email: $email, password: $password, onUsernameChanged: $onUsernameChanged, onEmailChanged: $onEmailChanged, onPasswordChanged: $onPasswordChanged}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AuthenticationPage]
class AuthenticationRoute extends _i6.PageRouteInfo<void> {
  const AuthenticationRoute({List<_i6.PageRouteInfo>? children})
      : super(
          AuthenticationRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthenticationRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignInPage]
class SignInRoute extends _i6.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i7.Key? key,
    required String? username,
    required String? password,
    required dynamic Function(String) onUsernameChanged,
    required dynamic Function(String) onPasswordChanged,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            username: username,
            password: password,
            onUsernameChanged: onUsernameChanged,
            onPasswordChanged: onPasswordChanged,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i6.PageInfo<SignInRouteArgs> page =
      _i6.PageInfo<SignInRouteArgs>(name);
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    required this.username,
    required this.password,
    required this.onUsernameChanged,
    required this.onPasswordChanged,
  });

  final _i7.Key? key;

  final String? username;

  final String? password;

  final dynamic Function(String) onUsernameChanged;

  final dynamic Function(String) onPasswordChanged;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, username: $username, password: $password, onUsernameChanged: $onUsernameChanged, onPasswordChanged: $onPasswordChanged}';
  }
}

/// generated route for
/// [_i5.SplashScreenPage]
class SplashScreenRoute extends _i6.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
