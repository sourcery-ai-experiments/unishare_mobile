import 'package:flutter/material.dart';

class AchievementLogo extends StatelessWidget {
  const AchievementLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 170,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 250, 135, 38),
              Color.fromARGB(255, 247, 86, 0),
            ],
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            Image.asset(
              'assets/img/achievementlogo.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 110,),
                  Text(
                    'Leaderboard Tahunan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Leaderboard',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
