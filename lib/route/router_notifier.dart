import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/appState/app_start_provider.dart';
import 'package:omillionare/appState/app_start_state.dart';
import 'package:omillionare/modules/auth/login_page.dart';
import 'package:omillionare/modules/auth/signup_page.dart';
import 'package:omillionare/modules/auth/verify_otp_page.dart';
import 'package:omillionare/modules/auth/verify_success.dart';
import 'package:omillionare/modules/dashboard/dashboard_screen.dart';
import 'package:omillionare/modules/error/error_page.dart';
import 'package:omillionare/modules/home/home_screen.dart';
import 'package:omillionare/modules/myNumber/my_number.dart';
import 'package:omillionare/modules/splash/splash_screen.dart';

final GlobalKey<HomeScreenState> homeKey = GlobalKey();

enum AppStatus {
  AUTHENTICATED,
  INITIAL,
  UNAUTHENTICATED,
  VERIFIED,
  PENDING_APPROVAL
}

var appStatus = AppStatus.INITIAL; // Initial state

class RouterNotifier extends AutoDisposeAsyncNotifier<void>
    implements Listenable {
  VoidCallback? routerListener;
  late AppStartState appStartState;

  @override
  Future<void> build() async {
    // Reset authentication state
    appStartState = await ref.watch(appStartProvider);

    appStartState.maybeWhen(
      authenticated: () {
        appStatus = AppStatus.AUTHENTICATED;
      },
      unauthenticated: () {
        appStatus = AppStatus.UNAUTHENTICATED;
      },
      verified: () {
        appStatus = AppStatus.VERIFIED;
      },
      pendingApproval: () {
        appStatus = AppStatus.PENDING_APPROVAL;
      },
      orElse: () {
        appStatus = AppStatus.INITIAL;
      },
    );

    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  // String? redirect(BuildContext context, GoRouterState state) {
  //   if (state.fullPath == null) {
  //     return "/${ErrorPage.routeName}";
  //   } else {
  //     if (state.fullPath!.startsWith('/error')) {
  //     } else if (appStatus == AppStatus.INITIAL &&
  //         state.fullPath == "/splash") {
  //       return '/${SplashScreen.routeName}';
  //     } else if (appStatus == AppStatus.UNAUTHENTICATED &&
  //         !(state.fullPath!.startsWith('/auth') ||
  //             state.fullPath! == '/verification')) {
  //       return '/${LoginPage.routeName}';
  //     } else if (appStatus == AppStatus.AUTHENTICATED &&
  //         !state.fullPath!.startsWith('/otp')) {
  //       return '/${OtpPage.routeName}';
  //     }
  //   }
  //   return null;
  // }

  String? redirect(BuildContext context, GoRouterState state) {
    if (state.uri.toString() == '/') {
      return '/${SplashScreen.routeName}';
    }
    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    if (routerListener == listener) {
      routerListener = null;
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
        GoRoute(
          path: '/${MyNumberPage.routeName}',
          name: MyNumberPage.routeName,
          builder: (context, state) => const MyNumberPage(),
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
    AutoDisposeAsyncNotifierProvider<RouterNotifier, void>(() {
  return RouterNotifier();
});
