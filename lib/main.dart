import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:snap_stream/firebase_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snap_stream/providers/is_loading.dart';
import 'package:snap_stream/state/auth/notifiers/auth_state_notifier.dart';
import 'package:snap_stream/state/auth/providers/is_logged_in_provider.dart';
import 'package:snap_stream/views/components/loading/loading_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      home: Consumer(
        builder: (context, ref, child) {
          ref.listen<bool>(isLoadingProvider, (_, isLoading) {
            if (isLoading) {
              LoadingScreen.instance().show(context: context);
            } else {
              LoadingScreen.instance().hide();
            }
          });

          if (ref.watch(isLoggedInProvider)) {
            return const MainView();
          } else {
            return const LoginView();
          }
        },
      ),
    );
  }
}

class MainView extends ConsumerWidget {
  const MainView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              ref.read(authStateNotifierProvider.notifier).logout();
            },
            child: const Text('logout'),
          ),
        ],
      ),
    );
  }
}

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              ref.read(authStateNotifierProvider.notifier).loginWithGoogle();
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
