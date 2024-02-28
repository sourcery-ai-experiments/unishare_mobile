import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: OutlinedButton(
        style: ButtonStyle(
            minimumSize: const MaterialStatePropertyAll(
              Size(320, 54),
            ),
            foregroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 247, 86, 0),
            ),
            side: const MaterialStatePropertyAll(
              BorderSide(
                width: 1.5,
                color: Color(0xFFF75600),
              ),
            )),
        onPressed: () {},
        child: const Text(
          "Daftar Akun",
          style: TextStyle(
              fontFamily: 'Rubik', fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
