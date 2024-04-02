import 'package:flutter/material.dart';
import 'package:unishare/app/widgets/card/post_card.dart';

class SeminarPage extends StatelessWidget {
  const SeminarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          PostCard(
            type: 'INI SEMINAR',
            title: 'Virtual Talent Inc.',
            period: 'Registrasi: 12 Agust - 28 Sept 2023',
            location: 'Lokasi: Remote from Home',
            thumbnailAsset: 'assets/img/unishare_splash.png',
          ),
          PostCard(
            type: 'Full Stack Developer',
            title: 'PT. Unity Dev Indonesia',
            period: 'Registrasi: 12 Des - 30 Jan 2024',
            location: 'Lembang, Bandung',
            thumbnailAsset: 'assets/img/unishare_splash.png',
          ),
        ],
      ),
    );
  }
}
