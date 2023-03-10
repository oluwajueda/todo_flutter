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
    apiKey: 'AIzaSyC09RGblk1D-usjvocFgH_ZeqzvysYxnuU',
    appId: '1:817708822228:web:92b6a76e4fd4bb4eb55541',
    messagingSenderId: '817708822228',
    projectId: 'todo-flutter-e2dff',
    authDomain: 'todo-flutter-e2dff.firebaseapp.com',
    storageBucket: 'todo-flutter-e2dff.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6vNr8ubP5Y1VG8VcS3C1h6Rt8Sy0b1HA',
    appId: '1:817708822228:android:fc6358fb7748c1c9b55541',
    messagingSenderId: '817708822228',
    projectId: 'todo-flutter-e2dff',
    storageBucket: 'todo-flutter-e2dff.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfFBljqfoXClCj3LHwO2zomYvW64SQGug',
    appId: '1:817708822228:ios:d160326d6a67ceaeb55541',
    messagingSenderId: '817708822228',
    projectId: 'todo-flutter-e2dff',
    storageBucket: 'todo-flutter-e2dff.appspot.com',
    iosClientId: '817708822228-hp559ak8bi7pksg0npdvb0eu26em1qvb.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoAppFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCfFBljqfoXClCj3LHwO2zomYvW64SQGug',
    appId: '1:817708822228:ios:d160326d6a67ceaeb55541',
    messagingSenderId: '817708822228',
    projectId: 'todo-flutter-e2dff',
    storageBucket: 'todo-flutter-e2dff.appspot.com',
    iosClientId: '817708822228-hp559ak8bi7pksg0npdvb0eu26em1qvb.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoAppFlutter',
  );
}
