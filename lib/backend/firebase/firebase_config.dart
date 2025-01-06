import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCU6vslU_xe4KRwN8zaCTSUIGw3qU7hhKM",
            authDomain: "hackmisso-gnk2024.firebaseapp.com",
            projectId: "hackmisso-gnk2024",
            storageBucket: "hackmisso-gnk2024.appspot.com",
            messagingSenderId: "810127844224",
            appId: "1:810127844224:web:e4930ed502d6510e5ed765",
            measurementId: "G-TMSVW5H8ZJ"));
  } else {
    await Firebase.initializeApp();
  }
}
