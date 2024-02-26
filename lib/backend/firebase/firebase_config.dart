import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCxA8VqEIVoqa6Yu5NccVhpwSb706bu8ik",
            authDomain: "trial-gs.firebaseapp.com",
            projectId: "trial-gs",
            storageBucket: "trial-gs.appspot.com",
            messagingSenderId: "69787231510",
            appId: "1:69787231510:web:8d6175a63d6e27831a1c37",
            measurementId: "G-QNK073LQGV"));
  } else {
    await Firebase.initializeApp();
  }
}
