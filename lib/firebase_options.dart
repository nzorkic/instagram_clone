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
    apiKey: 'AIzaSyCXzcWZ7w4KEO5NWZ6ihD6TqvXZlnkkrh4',
    appId: '1:363463723069:web:eef65bd9a65b20f116c254',
    messagingSenderId: '363463723069',
    projectId: 'instagram-clone-2d446',
    authDomain: 'instagram-clone-2d446.firebaseapp.com',
    storageBucket: 'instagram-clone-2d446.appspot.com',
    measurementId: 'G-CLMLKELWKP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRflU0d4YBTNSEAUrd2f-UB4oX2jXvykQ',
    appId: '1:363463723069:android:19e5b30b9bb0db0216c254',
    messagingSenderId: '363463723069',
    projectId: 'instagram-clone-2d446',
    storageBucket: 'instagram-clone-2d446.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABt_cZ_P9R_lUVUt1MREDsYqBwBrw3Cb4',
    appId: '1:363463723069:ios:3a415e15afec7f2b16c254',
    messagingSenderId: '363463723069',
    projectId: 'instagram-clone-2d446',
    storageBucket: 'instagram-clone-2d446.appspot.com',
    iosClientId:
        '363463723069-a31r2k8egfq4sl6fnidal5v1supp00nd.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyABt_cZ_P9R_lUVUt1MREDsYqBwBrw3Cb4',
    appId: '1:363463723069:ios:3a415e15afec7f2b16c254',
    messagingSenderId: '363463723069',
    projectId: 'instagram-clone-2d446',
    storageBucket: 'instagram-clone-2d446.appspot.com',
    iosClientId:
        '363463723069-a31r2k8egfq4sl6fnidal5v1supp00nd.apps.googleusercontent.com',
    iosBundleId: 'com.example.instagramClone',
  );
}
