// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'views/authentication/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAFGtLueE7rk70gGKgdLqDQ4jWRVoCBUCo",
      authDomain: "e-evaluation-f1d87.firebaseapp.com",
      projectId: "e-evaluation-f1d87",
      storageBucket: "e-evaluation-f1d87.appspot.com",
      messagingSenderId: "568377935408",
      appId: "1:568377935408:web:e7335b04dfb862ac7a4ff5",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Evaluation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
