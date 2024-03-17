import 'package:flutter/material.dart';
import 'package:unishare/widgets/homepage_card.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    User? user = FirebaseAuth.instance.currentUser;
    String fullname = user!.displayName!;

    return SizedBox(
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
          Positioned(
            left: 30,
            top: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Selamat Datang,',
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
                            padding: const EdgeInsets.only(right: 32),
                            child: Column(
                              children: [
                                Image.asset('assets/img/milestone.png'),
                                const Text(
                                  'Milestone',
                                  style: TextStyle(
                                    color: Color(0xFF252422),
                                    fontSize: 13,
                                    fontFamily: 'Rubik',
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 2. leaderboard
                          Padding(
                            padding: const EdgeInsets.only(right: 32),
                            child: Column(
                              children: [
                                Image.asset('assets/img/leaderboard.png'),
                                const Text(
                                  'Leaderboard',
                                  style: TextStyle(
                                    color: Color(0xFF252422),
                                    fontSize: 13,
                                    fontFamily: 'Rubik',
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 3. jadwal
                          Padding(
                            padding: const EdgeInsets.only(right: 32),
                            child: Column(
                              children: [
                                Image.asset('assets/img/jadwal.png'),
                                const Text(
                                  'Jadwal',
                                  style: TextStyle(
                                    color: Color(0xFF252422),
                                    fontSize: 13,
                                    fontFamily: 'Rubik',
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 4. chat
                          Column(
                            children: [
                              Image.asset('assets/img/chat.png'),
                              const Text(
                                'Chat',
                                style: TextStyle(
                                  color: Color(0xFF252422),
                                  fontSize: 13,
                                  fontFamily: 'Rubik',
                                ),
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
                            padding: const EdgeInsets.only(top: 16, right: 44),
                            child: Column(
                              children: [
                                Image.asset('assets/img/notifikasi.png'),
                                const Text(
                                  'Notifikasi',
                                  style: TextStyle(
                                    color: Color(0xFF252422),
                                    fontSize: 13,
                                    fontFamily: 'Rubik',
                                  ),
                                )
                              ],
                            ),
                          ),
                          // 6. beasiswa
                          Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              children: [
                                Image.asset('assets/img/beasiswa.png'),
                                const Text(
                                  'Beasiswa',
                                  style: TextStyle(
                                    color: Color(0xFF252422),
                                    fontSize: 13,
                                    fontFamily: 'Rubik',
                                  ),
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
                      )
                    ],
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
