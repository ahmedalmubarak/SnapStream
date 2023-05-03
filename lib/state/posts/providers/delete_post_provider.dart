import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:snap_stream/state/image_upload/typedefs/is_loading.dart';
import 'package:snap_stream/state/posts/notifiers/delete_post_state_notifier.dart';

final deletePostProvider =
    StateNotifierProvider<DeletePostStateNotifier, IsLoading>(
  (ref) => DeletePostStateNotifier(),
);
