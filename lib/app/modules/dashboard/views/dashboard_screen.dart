import 'package:flutter/material.dart';
import 'package:unishare/widgets/homepage_card.dart';
import 'package:unishare/widgets/menubar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: screenWidth,
          height: screenHeight,
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
              const Positioned(
                left: 30,
                top: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Datang,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '{Full Name}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
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

              // SECTION 3: MENUS and CARDS (rounded white box)
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
                                padding: const EdgeInsets.only(right: 28),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
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
                                padding: const EdgeInsets.only(right: 28),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
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
                                padding: const EdgeInsets.only(right: 28),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
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
                                    onPressed: () {},
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
                                padding:
                                    const EdgeInsets.only(top: 12, right: 29),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
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
                                padding: const EdgeInsets.only(top: 12),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // SECTION 4: BOTTOM MENUBAR
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Menubar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
