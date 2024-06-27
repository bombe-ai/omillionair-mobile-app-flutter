import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/modules/auth/login_page.dart';
import 'package:omillionare/modules/auth/signup_page.dart';
import 'package:omillionare/modules/auth/verify_otp_page.dart';
import 'package:omillionare/modules/auth/verify_success.dart';
import 'package:omillionare/modules/dashboard/dashboard_screen.dart';
import 'package:omillionare/modules/home/home_screen.dart';
import 'package:omillionare/modules/splash/splash_screen.dart';

final GlobalKey<DashboardScreenState> homeKey = GlobalKey();

class RouterNotifier extends AutoDisposeNotifier<void> implements Listenable {
  VoidCallback? _routerListener;

  @override
  Future<void> build() async {
    // Listening to changes in the RouterNotifier state
    ref.listen<AsyncValue<void>>(this as ProviderListenable<AsyncValue<void>>, (previous, next) {
      if (next.isLoading) return; // Check if the new state is loading
      _routerListener?.call();
    });
  }

  String? redirect(BuildContext context, GoRouterState state) {
    if (state.uri.toString() == '/') {
      return '/${SplashScreen.routeName}';
    }
    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    if (_routerListener == listener) {
      _routerListener = null;
    }
  }

  List<RouteBase> get routes => [
        GoRoute(
          path: '/${SplashScreen.routeName}',
          name: SplashScreen.routeName,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/${LoginPage.routeName}',
          name: LoginPage.routeName,
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: '/${SignupPage.routeName}',
          name: SignupPage.routeName,
          builder: (context, state) => const SignupPage(),
        ),
        GoRoute(
          path: '/${OtpPage.routeName}',
          name: OtpPage.routeName,
          builder: (context, state) => const OtpPage(),
        ),
        GoRoute(
          path: '/${OtpVerifiedPage.routeName}',
          name: OtpVerifiedPage.routeName,
          builder: (context, state) => const OtpVerifiedPage(),
        ),
        ShellRoute(
          builder: (context, state, child) {
            return DashboardScreen(
              key: homeKey,
              child: child,
            );
          },
          routes: [
            GoRoute(
              path: '/${HomeScreen.routeName}',
              name: HomeScreen.routeName,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
      ];
}

extension RouteExtension on GoRouterState {
  String? query(String key) {
    return uri.queryParameters[key];
  }

  bool validateQuery(Map<String, String> data) {
    for (final key in data.keys) {
      if (data[key] != uri.queryParameters[key]) {
        return false;
      }
    }
    return true;
  }
}

final routerNotifierProvider =
    AutoDisposeNotifierProvider<RouterNotifier, void>(() {
  return RouterNotifier();
});
