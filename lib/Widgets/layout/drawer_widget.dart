import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          title: Text('Login'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/page1');
          },
        ),
        ListTile(
          title: Text('Signup'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/page2');
          },
        ),
      ],
    );
  }
}