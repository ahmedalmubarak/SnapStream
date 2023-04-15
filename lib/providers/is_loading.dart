import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:snap_stream/state/auth/notifiers/auth_state_notifier.dart';
part 'is_loading.g.dart';

@riverpod
bool isLoading(IsLoadingRef ref) {
  final authState = ref.watch(authStateNotifierProvider);
  return authState.isLoading;
}
