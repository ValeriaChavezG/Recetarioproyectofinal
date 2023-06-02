import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwj6jl3XjO-uocVDKM06rWPnzOljy32jE",
            authDomain: "proyectofinal-6ab61.firebaseapp.com",
            projectId: "proyectofinal-6ab61",
            storageBucket: "proyectofinal-6ab61.appspot.com",
            messagingSenderId: "793189171734",
            appId: "1:793189171734:web:75174e70d8ae81d7a4ab37"));
  } else {
    await Firebase.initializeApp();
  }
}
