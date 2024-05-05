import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCfg0rZiPCoquxQtgslvtZJtJlIerju6CY",
            authDomain: "navimate-database.firebaseapp.com",
            projectId: "navimate-database",
            storageBucket: "navimate-database.appspot.com",
            messagingSenderId: "541167906916",
            appId: "1:541167906916:web:c79ca523bfe557a0a7ef71",
            measurementId: "G-V8BXKQ8W3Q"));
  } else {
    await Firebase.initializeApp();
  }
}
