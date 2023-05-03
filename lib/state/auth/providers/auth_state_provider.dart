import 'package:hooks_riverpod/hooks_riverpod.dart' show StateNotifierProvider;
import 'package:snap_stream/state/auth/models/auth_state.dart';
import 'package:snap_stream/state/auth/notifiers/auth_state_notifier.dart';

final authStateProvider = StateNotifierProvider<AuthStateNotifier, AuthState>(
  (ref) => AuthStateNotifier(),
);
