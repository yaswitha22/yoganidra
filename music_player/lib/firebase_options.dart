// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyC-BuxGAb_RpGuxS10ixduGQuEGIC8pUhA',
    appId: '1:246034948964:web:ca255fc9979673a6351071',
    messagingSenderId: '246034948964',
    projectId: 'music-player-6164',
    authDomain: 'music-player-6164.firebaseapp.com',
    storageBucket: 'music-player-6164.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYeKmW7by0T9TIT-0b6JgninPncETr-0Q',
    appId: '1:246034948964:android:5914420ddf2ff7b6351071',
    messagingSenderId: '246034948964',
    projectId: 'music-player-6164',
    storageBucket: 'music-player-6164.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAL_Ps_EkZpttYQApHb5LepogKsvmnbyjc',
    appId: '1:246034948964:ios:ea860ff0b1a143d7351071',
    messagingSenderId: '246034948964',
    projectId: 'music-player-6164',
    storageBucket: 'music-player-6164.appspot.com',
    iosBundleId: 'com.example.musicPlayer',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAL_Ps_EkZpttYQApHb5LepogKsvmnbyjc',
    appId: '1:246034948964:ios:ea860ff0b1a143d7351071',
    messagingSenderId: '246034948964',
    projectId: 'music-player-6164',
    storageBucket: 'music-player-6164.appspot.com',
    iosBundleId: 'com.example.musicPlayer',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC-BuxGAb_RpGuxS10ixduGQuEGIC8pUhA',
    appId: '1:246034948964:web:1fdde1a22f51f37e351071',
    messagingSenderId: '246034948964',
    projectId: 'music-player-6164',
    authDomain: 'music-player-6164.firebaseapp.com',
    storageBucket: 'music-player-6164.appspot.com',
  );
}