import 'package:flutter/material.dart';

class DaTextField extends StatelessWidget {
  final String hintText;

  const DaTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black), // Garis bawah
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey.shade300), // Garis bawah saat tidak fokus
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
