import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:snap_stream/state/auth/backend/authenticator.dart';
import 'package:snap_stream/state/auth/models/auth_result.dart';
import 'package:snap_stream/state/auth/models/auth_state.dart';
import 'package:snap_stream/state/posts/typdef/user_id.dart';
import 'package:snap_stream/state/user_info/backend/user_info_storage.dart';
part 'auth_state_notifier.g.dart';

@riverpod
class AuthStateNotifier extends _$AuthStateNotifier {
  @override
  AuthState build() {
    return _init();
  }

  final _authenticator = const Authenticator();
  final _userInfoStorage = const UserInfoStorage();

  AuthState _init() {
    if (_authenticator.isAlreadyLoggedIn) {
      state = AuthState(
        result: AuthResult.success,
        isLoading: false,
        userId: _authenticator.userId,
      );
      return state;
    } else {
      state = const AuthState.unknown();
      return state;
    }
  }

  Future<void> logout() async {
    state = state.copiedWithIsLoading(true);
    await _authenticator.logOut();
    state = const AuthState.unknown();
  }

  Future<void> loginWithGoogle() async {
    state = state.copiedWithIsLoading(true);
    final result = await _authenticator.loginWithGoogle();
    final userId = _authenticator.userId;
    if (result == AuthResult.success && userId != null) {
      await _saveUSerInfo(userId: userId);
    }
    state = AuthState(
      result: result,
      isLoading: false,
      userId: userId,
    );
  }

  Future<void> _saveUSerInfo({required UserId userId}) =>
      _userInfoStorage.saveUserInfo(
        userId: userId,
        displayName: _authenticator.displayName,
        email: _authenticator.email,
      );
}
