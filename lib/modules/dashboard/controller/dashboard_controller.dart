import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashbaordControllerProvider =
    ChangeNotifierProvider<DashboardController>((ref) {
  return DashboardController();
});

class DashboardController extends ChangeNotifier {
  int currentPageIndex = 0;
}
