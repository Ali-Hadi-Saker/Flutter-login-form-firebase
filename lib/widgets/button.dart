import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final void Function()? onPressed;
  final Color buttonColor;
  Button(
      {super.key,
        required this.text,
        required this.buttonColor,
        this.onPressed});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      color: widget.buttonColor,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: widget.onPressed,
      child: Text(widget.text),
    );
  }
}
