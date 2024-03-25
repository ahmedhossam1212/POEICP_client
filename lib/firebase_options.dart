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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDG9K69JX1Yghipg14rf-xhS15IFIDFkc4',
    appId: '1:310294113265:web:8dcfbcedf9d52ab45cf250',
    messagingSenderId: '310294113265',
    projectId: 'poeicpclient4',
    authDomain: 'poeicpclient4.firebaseapp.com',
    storageBucket: 'poeicpclient4.appspot.com',
    measurementId: 'G-55R995QCDJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4R67iHqGE9TycWLRoC87LvgZubkPrEqc',
    appId: '1:310294113265:android:5e89fc9e9481b5465cf250',
    messagingSenderId: '310294113265',
    projectId: 'poeicpclient4',
    storageBucket: 'poeicpclient4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzU5zCbHntJ7AMVDm3cb-kihwv2KaXCUc',
    appId: '1:310294113265:ios:f8adbe9391493d385cf250',
    messagingSenderId: '310294113265',
    projectId: 'poeicpclient4',
    storageBucket: 'poeicpclient4.appspot.com',
    iosBundleId: 'com.example.poeicpClient',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDzU5zCbHntJ7AMVDm3cb-kihwv2KaXCUc',
    appId: '1:310294113265:ios:a7d7124d4095398b5cf250',
    messagingSenderId: '310294113265',
    projectId: 'poeicpclient4',
    storageBucket: 'poeicpclient4.appspot.com',
    iosBundleId: 'com.example.poeicpClient.RunnerTests',
  );
}
