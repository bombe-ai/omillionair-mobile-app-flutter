
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app_start_state.dart';

// StateNotifier to manage the AppStartState
class AppStartNotifier extends StateNotifier<AppStartState> {
  AppStartNotifier() : super(const AppStartState.initial());

  void setAuthenticated() => state = const AppStartState.authenticated();
  void setUnauthenticated() => state = const AppStartState.unauthenticated();
  void setVerified() => state = const AppStartState.verified();
  void setPendingApproval() => state = const AppStartState.pendingApproval();
  void setInitial() => state = const AppStartState.initial();
}

// Provider to expose the AppStartNotifier
final appStartProvider = StateNotifierProvider<AppStartNotifier, AppStartState>((ref) {
  return AppStartNotifier();
});
