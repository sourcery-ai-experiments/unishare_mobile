import 'package:flutter/material.dart';

class AchievementCard extends StatelessWidget {
  final String name;
  final String university;
  final int score;
  final int placement;
  final String thumbnailAsset;

  const AchievementCard({
    super.key,
    required this.name,
    required this.university,
    required this.score,
    required this.placement,
    required this.thumbnailAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 5, right: 30, left: 30, bottom: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(55.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(55.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 5,),
                Text('#$placement'),
                const SizedBox(width: 5,),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage(thumbnailAsset),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            university,
                            style: const TextStyle(
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.local_fire_department_sharp,
                        color: Color(0xFFF75600),
                      ),
                      Text(
                        score.toString(),
                        style: const TextStyle(
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Color(0xFFF75600),
                        ),
                      ),
                      const SizedBox(width: 6),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
