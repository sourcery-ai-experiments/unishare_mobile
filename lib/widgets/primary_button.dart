import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    const primaryButtonColor = Color.fromARGB(255, 247, 86, 0);

    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(
            Size(320, 54),
          ),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(primaryButtonColor),
        ),
        onPressed: () {},
        child: Text(
          message, // Display the passed-in message
          style: const TextStyle(
              fontFamily: 'Rubik', fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
