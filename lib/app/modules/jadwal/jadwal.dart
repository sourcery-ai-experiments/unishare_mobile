import 'package:flutter/material.dart';
import 'package:unishare/widgets/date_button.dart';
import 'package:unishare/widgets/date_card.dart';

class JadwalPage extends StatelessWidget {
  const JadwalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Juni, 2023',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TanggalButton(day: 'Sen', date: '15', isSelected: false),
                  TanggalButton(day: 'Sel', date: '16', isSelected: true),
                  TanggalButton(day: 'Rab', date: '17', isSelected: false),
                  TanggalButton(day: 'Kam', date: '18', isSelected: false),
                  TanggalButton(day: 'Jum', date: '19', isSelected: false),
                  TanggalButton(day: 'Sab', date: '20', isSelected: false),
                  TanggalButton(day: 'Min', date: '21', isSelected: false),
                ],
              )
            ),
            SizedBox(height: 4),
            DateCard(),
            Divider(),
            DateCard(),
          ],
        ),
      ),
    );
  } 

  }

