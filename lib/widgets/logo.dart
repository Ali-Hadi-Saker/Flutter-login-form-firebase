import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
          ),
          height: 70,
          width: 70,
          padding: EdgeInsets.all(14),
          child: Image.asset(
            "assets/images/logo.png",
            height: 30,
            width: 30,
          )),
    );
  }
}
