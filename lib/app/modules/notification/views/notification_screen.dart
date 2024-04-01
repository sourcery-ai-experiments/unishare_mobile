import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../homescreen/home_screen.dart';
// import 'package:intl/intl.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  // const String constantDateTimeString = "2024-03-26 13:22";

  final List<Map<String, dynamic>> content = const [
    {
      "icon": Icon(Icons.email),
      "title": "Ubah password akun",
      "desc": "Password anda telah berhasil diubah!",
      // "time": Text(DateFormat('hh:mm a').format(DateTime.now())),
    },
    {
      "icon": Icon(Icons.shield),
      "title": "Kompetisi : JOINTS CTF UGM",
      "desc": "Sertifikat juara telah dikirim via Email ketua!",
      // "time": (constantDateTimeString).toString().substring(11, 16),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xFFF6F7FF),
      body: ListView.separated(
          padding: EdgeInsets.all(20),
          itemCount: content.length,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              leading: CircleAvatar(
                backgroundColor: Color(0xFFFEEACB),
                child: content[index]["icon"],
              ),
              title: Text(content[index]["title"]),
              subtitle: Text(content[index]["desc"]),
            );
          }),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Notifikasi',
          style: TextStyle(
              fontFamily: 'Rubik',
              color: Color(0xFF252422),
              fontWeight: FontWeight.bold,
              fontSize: 18)),
      centerTitle: true,
      backgroundColor: const Color(0xFFF6F7FF),
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
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
