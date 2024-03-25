import 'package:flutter/material.dart';

class TanggalButton extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;

  const TanggalButton({
    Key? key,
    required this.day,
    required this.date,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color buttonColor = isSelected ? const Color(0xFFF75600) : const Color.fromARGB(255, 255, 255, 255);
    Color textColor = isSelected ? const Color(0xFFF5F7FF) : const Color(0xFF1F1D18);

    return Container(
      margin: const EdgeInsets.all(8),
      height: 70,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: buttonColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3)
          ),
        ], 
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 4),
            child: Text(
              day,
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 14,
                fontWeight: FontWeight.w200,
                color: textColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4, left: 8, right: 8, bottom: 8),
            child: Text(
              date,
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}



