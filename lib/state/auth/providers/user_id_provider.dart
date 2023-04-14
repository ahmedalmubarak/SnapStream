import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:snap_stream/state/auth/notifiers/auth_state_notifier.dart';
import 'package:snap_stream/state/posts/typdef/user_id.dart';
part 'user_id_provider.g.dart';

@riverpod
UserId? userId(UserIdRef ref) {
  return ref.watch(authStateNotifierProvider).userId;
}
