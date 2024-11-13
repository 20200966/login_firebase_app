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
      default:
        throw UnsupportedError(
            'DefaultFirebaseOptions are not supported for this platform.');
    }
  }

  // Generate this file with credentials with the FlutterFire CLI
  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'YOUR API KEY',
    appId: 'YOUR APP ID',
    messagingSenderId: '',
    projectId: 'flutterfire-ui-codelab',
    authDomain: 'flutterfire-ui-codelab.firebaseapp.com',
    storageBucket: 'flutterfire-ui-codelab.appspot.com',
    measurementId: 'MEASUREMENT ID',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'YOUR API KEY',
    appId: 'YOUR APP ID',
    messagingSenderId: '',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'YOUR API KEY',
    appId: 'YOUR APP ID',
    messagingSenderId: '',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.appspot.com',
    iosClientId: 'IOS CLIENT ID',
    iosBundleId: 'com.example.BUNDLE',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'YOUR API KEY',
    appId: 'YOUR APP ID',
    messagingSenderId: '',
    projectId: 'flutterfire-ui-codelab',
    storageBucket: 'flutterfire-ui-codelab.appspot.com',
    iosClientId: 'IOS CLIENT ID',
    iosBundleId: 'com.example.BUNDLE',
  );
}