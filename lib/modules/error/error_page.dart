// lib/modules/error/error_page.dart

import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  static const String routeName = 'error';
  final String message;

  const ErrorPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Text(message),
      ),
    );
  }
}
