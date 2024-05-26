import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDyaH53m3yLN0vKohjwR6bDSKksvvpW9fo",
            authDomain: "smarpill-386e1.firebaseapp.com",
            projectId: "smarpill-386e1",
            storageBucket: "smarpill-386e1.appspot.com",
            messagingSenderId: "467608073084",
            appId: "1:467608073084:web:e31a40a2c4467b6b16eaf9",
            measurementId: "G-VY9SXMQP0D"));
  } else {
    await Firebase.initializeApp();
  }
}
