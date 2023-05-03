import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:snap_stream/state/auth/models/auth_result.dart';
import 'package:snap_stream/state/auth/providers/auth_state_provider.dart';

part 'is_logged_in_provider.g.dart';

@riverpod
bool isLoggedIn(IsLoggedInRef ref) {
  final authProvider = ref.watch(authStateProvider);
  return authProvider.result == AuthResult.success;
}
