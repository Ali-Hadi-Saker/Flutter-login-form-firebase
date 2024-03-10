import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/inputField.dart';
import '../widgets/logo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
                  "Login to continue using the app",
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
              text: "Login",
              buttonColor: Colors.amber,
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Button(
              text: "SignUp",
              buttonColor: Colors.red,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("signup");
              },
            )
          ],
        ),
      ),
    );
  }
}
