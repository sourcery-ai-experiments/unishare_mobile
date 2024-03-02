import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle button tap
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        minimumSize: const Size(150.0, 50.0),
      ),
      icon: SvgPicture.asset('assets/icons/Google.svg', height: 20, width: 20,),
      label: const Text(
        'Google',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
