import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/modules/auth/login_page.dart';
import 'package:omillionare/modules/error/error_page.dart';
import 'package:omillionare/modules/splash/splash_screen.dart';

import 'router_notifier.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

/// This simple provider caches our GoRouter.
final routerProvider = Provider.autoDispose<GoRouter>((ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    navigatorKey: _key,
    refreshListenable: notifier,
    debugLogDiagnostics: true,
    initialLocation: "/${SplashScreen.routeName}",
    routes: notifier.routes,
    errorBuilder: (context, state) {
      return ErrorPage(
          message: state.error == null
              ? "Something Went Wrong"
              : state.error!.message);
    },
    redirect: notifier.redirect,
  );
});
