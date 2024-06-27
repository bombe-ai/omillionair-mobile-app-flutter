import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
<<<<<<< HEAD:lib/modules/splash/splash_screen.dart
import 'package:omillionare/modules/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

=======

class SplashScreen extends StatefulWidget {
>>>>>>> 185924bad9c5a8a774210facf4fb0d71b7de6816:lib/Screens/splash_screen.dart
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
<<<<<<< HEAD:lib/modules/splash/splash_screen.dart
      context.goNamed(HomeScreen.routeName);
=======
      context.go('/home');
>>>>>>> 185924bad9c5a8a774210facf4fb0d71b7de6816:lib/Screens/splash_screen.dart
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/splash_screen_bg-transformed.png'),
            fit: BoxFit.cover,
          ),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Center(
          child: Image.asset('assets/images/logo-transformed.png', width: 150),
        ),
      ),
    );
  }
}
