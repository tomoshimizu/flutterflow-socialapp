import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBNXY_ZQax1oc3W4LJXAql9tQIRZ5MR3DY",
            authDomain: "socialapp-36631.firebaseapp.com",
            projectId: "socialapp-36631",
            storageBucket: "socialapp-36631.appspot.com",
            messagingSenderId: "103947682506",
            appId: "1:103947682506:web:ea5da1e35f26461e72aa33"));
  } else {
    await Firebase.initializeApp();
  }
}
