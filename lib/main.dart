import 'package:flutter/material.dart';
import 'package:omillionare/shared/theme/app_theme.dart';
import 'package:omillionare/Screens/home_page.dart';
import 'package:omillionare/Screens/login_page.dart';
import 'package:omillionare/Screens/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: const AppTheme().themeData,
      routes: {
        '/': (context) => SafeArea(
              top: true,
              bottom: true,
              child: HomePage(),
            ),
        '/page1': (context) => SafeArea(
              top: true,
              bottom: true,
              child: LoginPage(),
            ),
        '/page2': (context) => SafeArea(
              top: true,
              bottom: true,
              child: SignupPage(),
            ),
      },
    );
  }
}
