import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width - 30,
        child: Container(
          // color: Color.fromRGBO(95, 127, 141, 0.612),
          child: ListView(
            children: [
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/home');
                  context.go('/home');
                },
              ),
              ListTile(
                title: Text('Login'),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/login');
                  context.go('/login');
                },
              ),
              ListTile(
                title: Text('Signup'),
                onTap: () {
                  // Navigator.pop(context);
                  // Navigator.pushNamed(context, '/signup');
                  context.go('/signup');
                },
              ),
            ],
          )
        ),
      );
    // return ListView(
    //   children: [
    //     ListTile(
    //       title: Text('Home'),
    //       onTap: () {
    //         // Navigator.pop(context);
    //         // Navigator.pushNamed(context, '/home');
    //         context.go('/home');
    //       },
    //     ),
    //     ListTile(
    //       title: Text('Login'),
    //       onTap: () {
    //         // Navigator.pop(context);
    //         // Navigator.pushNamed(context, '/login');
    //         context.go('/login');
    //       },
    //     ),
    //     ListTile(
    //       title: Text('Signup'),
    //       onTap: () {
    //         // Navigator.pop(context);
    //         // Navigator.pushNamed(context, '/signup');
    //         context.go('/signup');
    //       },
    //     ),
    //   ],
    // );
  }
}