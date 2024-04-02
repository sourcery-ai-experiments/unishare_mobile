import 'package:flutter/material.dart';

class TernaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final IconData iconData;
  final double width; 
  const TernaryButton({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.iconData,
    required this.width, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox( 
      width: width, 
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(73),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        icon: Icon(
          iconData,
          color: const Color.fromARGB(255, 247, 86, 0),
        ),
        label: Text(
          label,
          style: const TextStyle(
            fontFamily: 'Rubik',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 247, 86, 0),
          ),
        ),
      ),
    );
  }
}
