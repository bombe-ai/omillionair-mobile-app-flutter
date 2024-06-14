import 'package:flutter/material.dart';
import 'package:omillionare/Widgets/layout/drawer_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Sign up'),
              ),
            ]
            )
      ),
      endDrawer: const Drawer(
        child: DrawerWidget(),
      ),
    );
  }
}