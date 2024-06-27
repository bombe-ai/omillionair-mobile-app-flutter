import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:omillionare/constants/app_constants.dart';
import 'package:omillionare/widgets/App.dart';

Future<void> main() async {
  initializeSharedPref();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return   App();
  }
}
