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
    apiKey: 'AIzaSyClg6H1TTTdWhqUGECXA7mQcJKbiOULQ54',
    appId: '1:859317547276:web:c48b4c7783b84db9825929',
    messagingSenderId: '859317547276',
    projectId: 'collegeeventnotifications',
    authDomain: 'collegeeventnotifications.firebaseapp.com',
    storageBucket: 'collegeeventnotifications.appspot.com',
    measurementId: 'G-MC8CW63BMV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDB2ms9_Vy61NcjfIrFegBwPYPlQTArCS0',
    appId: '1:859317547276:android:2a9a90f14716bafa825929',
    messagingSenderId: '859317547276',
    projectId: 'collegeeventnotifications',
    storageBucket: 'collegeeventnotifications.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAy0PlQYCJLJPX9we2ht1e7KRzDtFpvKJ0',
    appId: '1:859317547276:ios:71a3d744cc2efe4e825929',
    messagingSenderId: '859317547276',
    projectId: 'collegeeventnotifications',
    storageBucket: 'collegeeventnotifications.appspot.com',
    iosBundleId: 'com.example.collegeAlertApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAy0PlQYCJLJPX9we2ht1e7KRzDtFpvKJ0',
    appId: '1:859317547276:ios:71a3d744cc2efe4e825929',
    messagingSenderId: '859317547276',
    projectId: 'collegeeventnotifications',
    storageBucket: 'collegeeventnotifications.appspot.com',
    iosBundleId: 'com.example.collegeAlertApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyClg6H1TTTdWhqUGECXA7mQcJKbiOULQ54',
    appId: '1:859317547276:web:aa59faeec5548599825929',
    messagingSenderId: '859317547276',
    projectId: 'collegeeventnotifications',
    authDomain: 'collegeeventnotifications.firebaseapp.com',
    storageBucket: 'collegeeventnotifications.appspot.com',
    measurementId: 'G-5TECM4G138',
  );
}
