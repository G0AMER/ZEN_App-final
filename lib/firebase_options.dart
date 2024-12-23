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
    apiKey: 'AIzaSyBc_Gzq3aMAMcfGLpW7HW2Qvw73ZZBN1PU',
    appId: '1:924244994106:web:90f3edeb813161d96d2d03',
    messagingSenderId: '924244994106',
    projectId: 'zen-c-i-s-nu02z8',
    authDomain: 'zen-c-i-s-nu02z8.firebaseapp.com',
    storageBucket: 'zen-c-i-s-nu02z8.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJGd64iaL3-bLRzJZWIQqJ-DNVFtNUaIQ',
    appId: '1:924244994106:android:58166ef18019519a6d2d03',
    messagingSenderId: '924244994106',
    projectId: 'zen-c-i-s-nu02z8',
    storageBucket: 'zen-c-i-s-nu02z8.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCHL7WTVJx36USpOltOQXSwsOWLsXDfLxU',
    appId: '1:924244994106:ios:72c335c1e8c8e5946d2d03',
    messagingSenderId: '924244994106',
    projectId: 'zen-c-i-s-nu02z8',
    storageBucket: 'zen-c-i-s-nu02z8.firebasestorage.app',
    androidClientId: '924244994106-c7tfrrodij52ejgjf4sij5in97gv0nr5.apps.googleusercontent.com',
    iosClientId: '924244994106-c1s24v2l57letslhuag39vk3k8a1tk43.apps.googleusercontent.com',
    iosBundleId: 'com.example.myFashionApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCHL7WTVJx36USpOltOQXSwsOWLsXDfLxU',
    appId: '1:924244994106:ios:72c335c1e8c8e5946d2d03',
    messagingSenderId: '924244994106',
    projectId: 'zen-c-i-s-nu02z8',
    storageBucket: 'zen-c-i-s-nu02z8.firebasestorage.app',
    androidClientId: '924244994106-c7tfrrodij52ejgjf4sij5in97gv0nr5.apps.googleusercontent.com',
    iosClientId: '924244994106-c1s24v2l57letslhuag39vk3k8a1tk43.apps.googleusercontent.com',
    iosBundleId: 'com.example.myFashionApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBc_Gzq3aMAMcfGLpW7HW2Qvw73ZZBN1PU',
    appId: '1:924244994106:web:90f3edeb813161d96d2d03',
    messagingSenderId: '924244994106',
    projectId: 'zen-c-i-s-nu02z8',
    authDomain: 'zen-c-i-s-nu02z8.firebaseapp.com',
    storageBucket: 'zen-c-i-s-nu02z8.firebasestorage.app',
  );

}