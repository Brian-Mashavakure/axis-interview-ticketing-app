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

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBgHICB9f9TOg0psjGIkClzUCSb1Po84M0',
    appId: '1:187623411338:web:bb3a51417f6f1abcd6e773',
    messagingSenderId: '187623411338',
    projectId: 'axis-interview',
    authDomain: 'axis-interview.firebaseapp.com',
    storageBucket: 'axis-interview.appspot.com',
  );

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBgHICB9f9TOg0psjGIkClzUCSb1Po84M0',
    appId: '1:187623411338:web:bb3a51417f6f1abcd6e773',
    messagingSenderId: '187623411338',
    projectId: 'axis-interview',
    authDomain: 'axis-interview.firebaseapp.com',
    storageBucket: 'axis-interview.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCq3wLBGou9SP8f3A5oBn2VDaCMjDdJfQM',
    appId: '1:187623411338:ios:2fc23f3c5bce4c59d6e773',
    messagingSenderId: '187623411338',
    projectId: 'axis-interview',
    storageBucket: 'axis-interview.appspot.com',
    iosBundleId: 'com.example.axisInterviewTicketingApp',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCq3wLBGou9SP8f3A5oBn2VDaCMjDdJfQM',
    appId: '1:187623411338:ios:2fc23f3c5bce4c59d6e773',
    messagingSenderId: '187623411338',
    projectId: 'axis-interview',
    storageBucket: 'axis-interview.appspot.com',
    iosBundleId: 'com.example.axisInterviewTicketingApp',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDruz4gT_Eqz_0i_ROdLSeyf4vizmA4Pic',
    appId: '1:187623411338:android:4918e77235dcfc16d6e773',
    messagingSenderId: '187623411338',
    projectId: 'axis-interview',
    storageBucket: 'axis-interview.appspot.com',
  );

}