import 'package:flutter/material.dart';
import 'package:omillionare/Widgets/layout/drawer_widget.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign up Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page1');
          },
          child: Text('Go to Login Page'),
        ),
      ),
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
    );
  }
}