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
    apiKey: 'AIzaSyB0BIY5wwrAgguxNTj_PgRaxZtaiEv6YDY',
    appId: '1:1012218554009:web:03821ef9e07d978016fa08',
    messagingSenderId: '1012218554009',
    projectId: 'notes-app-d141a',
    authDomain: 'notes-app-d141a.firebaseapp.com',
    storageBucket: 'notes-app-d141a.appspot.com',
    measurementId: 'G-Y7H5N3HBDB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwUq6aJG8sMx5FH1jYzTehmzZzz2RjQPQ',
    appId: '1:1012218554009:android:47826575e819077116fa08',
    messagingSenderId: '1012218554009',
    projectId: 'notes-app-d141a',
    storageBucket: 'notes-app-d141a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAaZw9_ZFPEm0hSFOW9Qbay8Jj3CJZCgWA',
    appId: '1:1012218554009:ios:22f90c62e2f3f9c016fa08',
    messagingSenderId: '1012218554009',
    projectId: 'notes-app-d141a',
    storageBucket: 'notes-app-d141a.appspot.com',
    iosBundleId: 'com.example.notesApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAaZw9_ZFPEm0hSFOW9Qbay8Jj3CJZCgWA',
    appId: '1:1012218554009:ios:55f3f5b4fca190f716fa08',
    messagingSenderId: '1012218554009',
    projectId: 'notes-app-d141a',
    storageBucket: 'notes-app-d141a.appspot.com',
    iosBundleId: 'com.example.notesApp.RunnerTests',
  );
}