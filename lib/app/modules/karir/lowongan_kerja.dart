import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unishare/app/controller/karir_controller.dart';
import 'package:unishare/app/models/karirmodel.dart';
import 'package:unishare/app/modules/karir/detail_karir.dart';
import 'package:unishare/app/modules/karir/detail_karir_ril.dart';
import 'package:unishare/app/widgets/card/post_card.dart';
import 'package:unishare/app/modules/karir/post_card_karir.dart';

class LowonganKerjaPage extends StatelessWidget {
  final KarirService _karirService = KarirService();
  LowonganKerjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Expanded(child: _buildKarirList(context))],
    ));
  }

  Widget _buildKarirList(BuildContext context) {
    return StreamBuilder(
        stream: _karirService.getDocumentsByKategori('Lowongan Kerja'),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading...');
          }
          return ListView(
            children: snapshot.data!.docs
                .map((doc) => _buildKarirItem(doc, context))
                .toList(),
          );
        });
  }

  Widget _buildKarirItem(DocumentSnapshot doc, BuildContext context) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    KarirPost karirPost = KarirPost(
        posisi: data['posisi'],
        penyelenggara: data['penyelenggara'],
        lokasi: data['lokasi'],
        urlKarir: data['urlKarir'],
        img: data['img'],
        tema: data['tema'],
        kategori: data['kategori'],
        deskripsi: data['deskripsi'],
        startDate: data['startDate'],
        endDate: data['endDate'],
        AnnouncementDate: data['AnnouncementDate']);
    return PostCardKarir(
      type: data['posisi'],
      title: data['penyelenggara'],
      period: 'Registrasi: ' +
          karirPost.endDate.toDate().day.toString() +
          "-" +
          karirPost.endDate.toDate().month.toString() +
          "-" +
          karirPost.endDate.toDate().year.toString(),
      location: data['lokasi'],
      thumbnailAsset: 'assets/img/unishare_splash.png',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailKarirRil(
              karirID: doc.id,
              karir: karirPost,
            ), // Replace with your actual detail page
          ),
        );
      },
    );
  }
}
