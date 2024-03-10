import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_project/screens/home.dart';
import 'package:login_project/screens/login.dart';
import 'package:login_project/screens/signup.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    //check if the user is logged in or no
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('==============================User is currently signed out!');
      } else {
        print('==============================User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: FirebaseAuth.instance.currentUser == null ? Login() : HomePage(),
      routes: {
        "signup": (context) => SignUp(),
        "login": (context) => Login(),
        "homePage": (context) => HomePage()
      },
    );
  }
}
