import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/modules/auth/login_page.dart';
import 'package:omillionare/modules/auth/signup_page.dart';
import 'package:omillionare/route/router.dart';

import '../modules/home/home_screen.dart';
import '../modules/splash/splash_screen.dart';

class App extends ConsumerWidget {
    App({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        // routes: [ //* ( context.go(/home/dummy ) Will take to this route
        //   GoRoute(
        //     path: 'dummy',
        //     builder: (context, state) => const Placeholder(),
        //   ),
        // ],
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Omillionare',
      routerConfig: router,
    );
  }
}
