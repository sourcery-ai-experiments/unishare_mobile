import 'package:flutter/material.dart';
import 'package:unishare/app/modules/beasiswa/views/beasiswa_screen.dart';
import 'package:unishare/app/modules/chat/chatroom.dart';
import 'package:unishare/app/modules/chat/messages.dart';
import 'package:unishare/app/modules/jadwal/jadwal_page.dart';
import 'package:unishare/app/modules/leaderboard/leaderboard_page.dart';
import 'package:unishare/app/modules/milestone/milestone_page.dart';
import 'package:unishare/app/modules/notification/views/notification_screen.dart';
import 'package:unishare/app/widgets/card/homepage_card.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    User? user = FirebaseAuth.instance.currentUser;
    String fullname = user?.displayName ?? 'User';
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: screenWidth,
          height: screenHeight + 200,
          child: Stack(
            children: [
              // SECTION 1: IMAGE & ILLUSTRATION (orange box)
              Positioned(
                child: Container(
                  width: screenWidth,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF75600),
                  ),
                  child: Image.asset(
                    'assets/img/Banner.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // SECTION 2: WELCOMING TEXT
              Positioned(
                left: 30,
                top: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Selamat Datang',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      fullname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: SizedBox(
                        width: 210,
                        child: Text(
                          'Temukan peluang yang tepat untuk mewujudkan impianmu bersama UniShare!',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Positioned(
                top: 50,
                right: 30,
                child: Container(
                  width: 54,
                  height: 54,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1F1D18),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/img/demonzz.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),

              // SECTION 3: MENUS and CARDS (rounded white box)
              Positioned(
                top: 248,
                child: Container(
                  width: screenWidth,
                  height: screenHeight + 100,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF5F7FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Center(
                    // UPPER MENU STARTS HERE!!
                    child: Container(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // 1. milestone
                              Padding(
                                key: const Key("milestone-icon-button"),
                                padding: const EdgeInsets.only(right: 28),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const MilestonePage(),
                                          ),
                                        );
                                      },
                                      icon: Image.asset(
                                        'assets/icons/milestone.png',
                                      ),
                                    ),
                                    const Text(
                                      'Milestone',
                                      style: TextStyle(
                                          color: Color(0xFF252422),
                                          fontSize: 12,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                          height: 0.5),
                                    )
                                  ],
                                ),
                              ),
                              // 2. leaderboard
                              Padding(
                                key: const Key("leaderboard-icon-button"),
                                padding: const EdgeInsets.only(right: 28),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const LeaderboardPage(),
                                          ),
                                        );
                                      },
                                      icon: Image.asset(
                                        'assets/icons/leaderboard.png',
                                      ),
                                    ),
                                    const Text(
                                      'Leaderboard',
                                      style: TextStyle(
                                          color: Color(0xFF252422),
                                          fontSize: 12,
                                          fontFamily: 'Rubik',
                                          height: 0.5),
                                    )
                                  ],
                                ),
                              ),
                              // 3. jadwal
                              Padding(
                                key: const Key("jadwal-icon-button"),
                                padding: const EdgeInsets.only(right: 28),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const JadwalMain(),
                                          ),
                                        );
                                      },
                                      icon: Image.asset(
                                        'assets/icons/jadwal.png',
                                      ),
                                    ),
                                    const Text(
                                      'Jadwal',
                                      style: TextStyle(
                                          color: Color(0xFF252422),
                                          fontSize: 12,
                                          fontFamily: 'Rubik',
                                          height: 0.5),
                                    )
                                  ],
                                ),
                              ),
                              // 4. chat
                              Column(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Messages(),
                                        ),
                                      );
                                    },
                                    icon: Image.asset(
                                      'assets/icons/chat.png',
                                    ),
                                  ),
                                  const Text(
                                    'Chat',
                                    style: TextStyle(
                                        color: Color(0xFF252422),
                                        fontSize: 12,
                                        fontFamily: 'Rubik',
                                        height: 0.5),
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // 5. notifikasi
                              Padding(
                                key: const Key("notifikasi-icon-button"),
                                padding:
                                    const EdgeInsets.only(top: 12, right: 29),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const NotificationPage()));
                                      },
                                      icon: Image.asset(
                                        'assets/icons/notifikasi.png',
                                      ),
                                    ),
                                    const Text(
                                      'Notifikasi',
                                      style: TextStyle(
                                          color: Color(0xFF252422),
                                          fontSize: 12,
                                          fontFamily: 'Rubik',
                                          height: 0.5),
                                    )
                                  ],
                                ),
                              ),
                              // 6. beasiswa
                              Padding(
                                key: const Key("beasiswa-icon-button"),
                                padding: const EdgeInsets.only(top: 12),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const BeasiswaScreen()));
                                      },
                                      icon: Image.asset(
                                        'assets/icons/beasiswa.png',
                                      ),
                                    ),
                                    const Text(
                                      'Beasiswa',
                                      style: TextStyle(
                                          color: Color(0xFF252422),
                                          fontSize: 12,
                                          fontFamily: 'Rubik',
                                          height: 0.5),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Beasiswa',
                              style: TextStyle(
                                color: Color(0xFF1F1D18),
                                fontSize: 16,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth - 60,
                            height: 250,
                            child: const Center(
                              child: SingleChildScrollView(
                                padding: EdgeInsets.only(
                                    top: 10, left: 13, right: 13, bottom: 16),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: HomepageCard(),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: HomepageCard(),
                                    ),
                                    HomepageCard()
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Magang',
                              style: TextStyle(
                                color: Color(0xFF1F1D18),
                                fontSize: 16,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth - 60,
                            height: 250,
                            child: const Center(
                              child: SingleChildScrollView(
                                padding: EdgeInsets.only(
                                    top: 10, left: 13, right: 13, bottom: 16),
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: HomepageCard(),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 15),
                                      child: HomepageCard(),
                                    ),
                                    HomepageCard()
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
