import 'package:flutter/material.dart';

class HomepageCard extends StatelessWidget {
  const HomepageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 230,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26252422),
            blurRadius: 15,
            offset: Offset(0, 3),
          )
        ],
      ),

    );
  }
}
