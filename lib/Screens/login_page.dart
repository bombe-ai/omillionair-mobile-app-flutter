import 'package:flutter/material.dart';
import 'package:omillionare/Widgets/layout/drawer_widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/page2');
          },
          child: Text('Go to Signup Page'),
        ),
      ),
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
    );
  }
}