import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:snap_stream/state/image_upload/notifiers/image_upload_notifier.dart';
import 'package:snap_stream/state/image_upload/typedefs/is_loading.dart';

final imageUploaderProvider =
    StateNotifierProvider<ImageUploadNotifier, IsLoading>(
  (ref) => ImageUploadNotifier(),
);
