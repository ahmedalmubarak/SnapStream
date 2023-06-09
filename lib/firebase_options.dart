// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCQEe78HZht-Unz7BY6BM_q3LS023vfr9U',
    appId: '1:752022280884:android:475446e2951d28d80f55e1',
    messagingSenderId: '752022280884',
    projectId: 'snapstream-bfe7b',
    storageBucket: 'snapstream-bfe7b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuBnndLkJIBLN5pTePI0q9PSf-iGIvHHY',
    appId: '1:752022280884:ios:a76c6fb49dd161ed0f55e1',
    messagingSenderId: '752022280884',
    projectId: 'snapstream-bfe7b',
    storageBucket: 'snapstream-bfe7b.appspot.com',
    androidClientId: '752022280884-nnovffri4gpc52jfo49ugv72uqvqoo99.apps.googleusercontent.com',
    iosClientId: '752022280884-ev80885p46d12oggrummobnj64e5sftd.apps.googleusercontent.com',
    iosBundleId: 'com.ahmed.personal.snapStream',
  );
}
