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
    apiKey: 'AIzaSyCAreGVuGKfy0PbP13UaxBAiU6lAoBSBNI',
    appId: '1:628601536162:web:8ff449a6d3a9cfd8a3a1fb',
    messagingSenderId: '628601536162',
    projectId: 'babycare-ffe27',
    authDomain: 'babycare-ffe27.firebaseapp.com',
    storageBucket: 'babycare-ffe27.appspot.com',
    measurementId: 'G-26DV1SZVHD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjNmCFYKzCqtGclUL48TC9UYNppIBoBXw',
    appId: '1:628601536162:android:ad28b06bf7f909a2a3a1fb',
    messagingSenderId: '628601536162',
    projectId: 'babycare-ffe27',
    storageBucket: 'babycare-ffe27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXTJ4EYJOhXdLyhzjaqb9OB9LfPQmrNys',
    appId: '1:628601536162:ios:e7036ff7b74de202a3a1fb',
    messagingSenderId: '628601536162',
    projectId: 'babycare-ffe27',
    storageBucket: 'babycare-ffe27.appspot.com',
    androidClientId: '628601536162-g8n6iid789e8eabckrci3b973v21o9a6.apps.googleusercontent.com',
    iosClientId: '628601536162-u3tjenf7eaqu18o7t43ugip3lv3d0tjf.apps.googleusercontent.com',
    iosBundleId: 'com.example.babycare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXTJ4EYJOhXdLyhzjaqb9OB9LfPQmrNys',
    appId: '1:628601536162:ios:16128399973a608fa3a1fb',
    messagingSenderId: '628601536162',
    projectId: 'babycare-ffe27',
    storageBucket: 'babycare-ffe27.appspot.com',
    androidClientId: '628601536162-g8n6iid789e8eabckrci3b973v21o9a6.apps.googleusercontent.com',
    iosClientId: '628601536162-qgrc0vdeo7lfs5rat6p2l9qnmoveinuk.apps.googleusercontent.com',
    iosBundleId: 'com.example.babycare.RunnerTests',
  );
}
