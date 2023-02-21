import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA21NLvlP4qIGXAI7xUa9XM4N5piVgyNCI",
            authDomain: "pedidos-e9f07.firebaseapp.com",
            projectId: "pedidos-e9f07",
            storageBucket: "pedidos-e9f07.appspot.com",
            messagingSenderId: "239614468322",
            appId: "1:239614468322:web:e1f07719f210d8ac75bebb"));
  } else {
    await Firebase.initializeApp();
  }
}
