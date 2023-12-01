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
    apiKey: 'AIzaSyAq7PVLIN_MQxaxWZa5d41mB5fQFgxu23o',
    appId: '1:1093256971649:web:5581f0ad6a29bfbe4f9480',
    messagingSenderId: '1093256971649',
    projectId: 'bikerx-d8556',
    authDomain: 'bikerx-d8556.firebaseapp.com',
    storageBucket: 'bikerx-d8556.appspot.com',
    measurementId: 'G-L54W6NXT5Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtEy5L9raag79ZAqeeLxPFEbehIBUd02U',
    appId: '1:1093256971649:android:cc68f1332a52be1e4f9480',
    messagingSenderId: '1093256971649',
    projectId: 'bikerx-d8556',
    storageBucket: 'bikerx-d8556.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrhv5V-MqwSgh8bRAUOXeHl9Uy-qcaiX0',
    appId: '1:1093256971649:ios:f1971190386078fa4f9480',
    messagingSenderId: '1093256971649',
    projectId: 'bikerx-d8556',
    storageBucket: 'bikerx-d8556.appspot.com',
    iosBundleId: 'com.example.bikerxx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrhv5V-MqwSgh8bRAUOXeHl9Uy-qcaiX0',
    appId: '1:1093256971649:ios:50e48df43d0f4ea34f9480',
    messagingSenderId: '1093256971649',
    projectId: 'bikerx-d8556',
    storageBucket: 'bikerx-d8556.appspot.com',
    iosBundleId: 'com.example.bikerxx.RunnerTests',
  );
}