import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/route/router.dart';
=======
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:omillionare/Screens/splash_screen.dart';
import 'package:omillionare/bloc/auth/auth_bloc.dart';
import 'package:omillionare/bloc/home/home_bloc.dart';
import 'package:omillionare/bloc/login/login_bloc.dart';
import 'package:omillionare/bloc/signup/signup_bloc.dart';
import 'package:omillionare/Screens/home_page.dart';
import 'package:omillionare/Screens/login_page.dart';
import 'package:omillionare/Screens/signup_page.dart';
import 'package:omillionare/config/themes/light_theme.dart';
>>>>>>> 185924bad9c5a8a774210facf4fb0d71b7de6816

class App extends ConsumerWidget {
  const App({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
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
<<<<<<< HEAD
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Omillionare',
      routerConfig: router,
=======
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(),
        ),
      ],
      child: MaterialApp.router(
        title: 'O-Millionare',
        theme: const AppTheme().themeData,
        routerConfig: _router,
      ),
>>>>>>> 185924bad9c5a8a774210facf4fb0d71b7de6816
    );
  }
}
