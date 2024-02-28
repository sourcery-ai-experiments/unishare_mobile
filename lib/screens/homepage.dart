import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        children: [
          // SECTION 1: WELCOMING TEXT (orange box)
          Positioned(
            child: Container(
              width: screenWidth,
              height: 300,
              decoration: const BoxDecoration(color: Color(0xFFF75600)),
            ),
          ),

          // SECTION 2: MENUS and CARDS (rounded white box)
          Positioned(
            top: 248,
            child: Container(
              width: screenWidth,
              height: screenHeight,
              decoration: const ShapeDecoration(
                color: Color(0xFFF5F7FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
