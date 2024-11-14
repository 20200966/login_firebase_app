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
   // ignore: missing_enum_constant_in_switch
   switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }

   //throw UnsupportedError(
     //'DefaultFirebaseOptions are not supported for this platform.',
   //);
 }

 static const FirebaseOptions web = FirebaseOptions(
   apiKey: 'AIzaSyAKWsOPeHGYSz9aH2UcLDM6g6bdStEyPyE',
   appId: '1:415023502396:web:cba652c63ea35bc7449f39',
   messagingSenderId: '415023502396',
   projectId: 'flutterfire-ui-codelab-eef0b',
   authDomain: 'flutterfire-ui-codelab-eef0b.firebaseapp.com',
   storageBucket: 'flutterfire-ui-codelab-eef0b.firebasestorage.app',
   measurementId: 'G-DGF0CP099H',
 );

 static const FirebaseOptions android = FirebaseOptions(
   apiKey: 'AIzaSyDconZaCQpkxIJ5KQBF-3tEU0rxYsLkIe8',
   appId: '1:963656261848:android:c939ccc86ab2dcdbb237ad',
   messagingSenderId: '963656261848',
   projectId: 'flutterfire-ui-codelab',
   storageBucket: 'flutterfire-ui-codelab.appspot.com',
 );

 static const FirebaseOptions ios = FirebaseOptions(
   apiKey: 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs',
   appId: '1:963656261848:ios:d9e01cfe8b675dfcb237ad',
   messagingSenderId: '963656261848',
   projectId: 'flutterfire-ui-codelab',
   storageBucket: 'flutterfire-ui-codelab.appspot.com',
   iosClientId: '963656261848-v7r3vq1v6haupv0l1mdrmsf56ktnua60.apps.googleusercontent.com',
   iosBundleId: 'com.example.complete',
 );

 static const FirebaseOptions macos = FirebaseOptions(
   apiKey: 'AIzaSyBqLWsqFjYAdGyihKTahMRDQMo0N6NVjAs',
   appId: '1:963656261848:ios:d9e01cfe8b675dfcb237ad',
   messagingSenderId: '963656261848',
   projectId: 'flutterfire-ui-codelab',
   storageBucket: 'flutterfire-ui-codelab.appspot.com',
   iosClientId: '963656261848-v7r3vq1v6haupv0l1mdrmsf56ktnua60.apps.googleusercontent.com',
   iosBundleId: 'com.example.complete',
 );
}
