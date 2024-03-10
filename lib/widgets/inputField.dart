import 'package:flutter/material.dart';

class CustomizedInput extends StatefulWidget {
  final String hintText;
  final TextEditingController myController;
  const CustomizedInput({super.key, required this.hintText, required this.myController});

  @override
  State<CustomizedInput> createState() => _CustomizedInputState();
}

class _CustomizedInputState extends State<CustomizedInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextField(
        controller: widget.myController,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 15),
            hintText: widget.hintText,
            hintStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:
              BorderSide(color: const Color.fromARGB(255, 190, 190, 190)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:
              BorderSide(color: const Color.fromARGB(255, 175, 174, 174)),
            )),
      ),
    );
  }
}
