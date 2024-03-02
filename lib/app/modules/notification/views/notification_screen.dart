import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        title: Text('Notifikasi',
            style: TextStyle(
                fontFamily: 'Rubik',
                color: Color(0xFF252422),
                fontWeight: FontWeight.bold,
                fontSize: 18)),
        centerTitle: true,
        backgroundColor: Color(0xFFF6F7FF),
        leading: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: SvgPicture.asset(
            'assets/icons/backbutton.svg',
            height: 23,
            width: 23,
          ),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
