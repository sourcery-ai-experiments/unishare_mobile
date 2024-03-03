import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unishare/app/modules/karir/detail_karir.dart';

class PostCard extends StatelessWidget {
  final String type;
  final String title;
  final String period;
  final String thumbnailAsset;
  final String location;
  const PostCard({super.key, required this.type, required this.title, required this.period, required this.location, required this.thumbnailAsset});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailKarir(), // Replace with your actual detail page
          ),
        );
      },
      child: Card(
        color: Colors.white,
        elevation: 4,
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(thumbnailAsset),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: const TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Color(0xFFF75600),
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      period,
                      style: const TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      location,
                      style: const TextStyle(
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w200,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
