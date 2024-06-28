import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_start_state.freezed.dart';
part 'app_start_state.g.dart';

@freezed
class AppStartState with _$AppStartState {
  const factory AppStartState.authenticated() = Authenticated;
  const factory AppStartState.unauthenticated() = Unauthenticated;
  const factory AppStartState.verified() = Verified;
  const factory AppStartState.pendingApproval() = PendingApproval;
  const factory AppStartState.initial() = Initial;

  factory AppStartState.fromJson(Map<String, dynamic> json) => _$AppStartStateFromJson(json);
}
