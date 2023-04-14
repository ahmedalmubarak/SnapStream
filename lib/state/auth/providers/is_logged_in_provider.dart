import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:snap_stream/state/auth/models/auth_result.dart';
import 'package:snap_stream/state/auth/notifiers/auth_state_notifier.dart';
part 'is_logged_in_provider.g.dart';

@riverpod
bool isLoggedIn(IsLoggedInRef ref) {
  final authState = ref.watch(authStateNotifierProvider);
  return authState.result == AuthResult.success;
}
