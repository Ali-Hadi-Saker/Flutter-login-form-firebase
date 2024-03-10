import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/inputField.dart';
import '../widgets/logo.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Logo(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Login",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10),
                Text(
                  "Signup to continue using the app",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomizedInput(
                    hintText: "Enter you Email", myController: email),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomizedInput(
                    hintText: "Enter your username", myController: username),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomizedInput(
                    hintText: "Enter your Password", myController: password),
                SizedBox(height: 5),
                Container(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            Button(
              text: "Create Account",
              buttonColor: Colors.amber,
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: email.text,
                    password: password.text,
                  );
                  Navigator.of(context).pushReplacementNamed("homePage");
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              text: "Back to SignIn",
              buttonColor: Colors.red,
              onPressed: () {
                Navigator.of(context).pushNamed("login");
              },
            )
          ],
        ),
      ),
    );
  }
}
