import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home');
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
          /** Add your logo here the logo width should be 300 */
          child: Image.asset('assets/images/logo-transformed.png', width: 150),
        ),
      ),
    );
  }
}

