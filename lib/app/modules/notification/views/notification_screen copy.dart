import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        backgroundColor: const Color(0xFFF6F7FF),
        body: SizedBox.expand(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                // textAlign: TextAlign.end,
                'Hari Ini',
                style: TextStyle(
                    color: Color(0xFF252422),
                    fontSize: 12,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 320,
                height: 72,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 320,
                        height: 72,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 281,
                      top: 47,
                      child: Text(
                        '08:47',
                        style: TextStyle(
                          color: Color(0xFFF75600),
                          fontSize: 11,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 12,
                      child: Container(
                        width: 238,
                        height: 40,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 48,
                              top: 6,
                              child: Text(
                                'Ubah Password Akun',
                                style: TextStyle(
                                  color: Color(0xFF252422),
                                  fontSize: 12,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 48,
                              top: 23,
                              child: Text(
                                'Password anda telah berhasil diubah!',
                                style: TextStyle(
                                  color: Color(0xFF7C7974),
                                  fontSize: 11,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 40,
                                height: 40,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFEEACB),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 11,
                                      top: 13,
                                      child: Container(
                                        width: 18,
                                        height: 14,
                                        child: Stack(children: []),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
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

/*
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});
  // const String constantDateTimeString = "2024-03-26 13:22";

  final List<Map<String, dynamic>> content = const [
    {
      "icon": Icon(Icons.email),
      "title": "Ubah password akun",
      "desc": "Password anda telah berhasil diubah!",
      // "time": (constantDateTimeString).toString().substring(11, 16),
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
      appBar: appBar(),
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

*/