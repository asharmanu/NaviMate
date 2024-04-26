import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAldZi21mB6E6THLHdgGThOzptBKIaUCro",
            authDomain: "navimate-4468c.firebaseapp.com",
            projectId: "navimate-4468c",
            storageBucket: "navimate-4468c.appspot.com",
            messagingSenderId: "834455485925",
            appId: "1:834455485925:web:66055b679c6efdb8ba430c",
            measurementId: "G-5CBYDT2W0R"));
  } else {
    await Firebase.initializeApp();
  }
}
