import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(
            Size(320, 54),
          ),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 247, 86, 0),
          ),
        ),
        onPressed: () {},
        child: const Text(
          "Masuk",
          style: TextStyle(
              fontFamily: 'Rubik', fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
