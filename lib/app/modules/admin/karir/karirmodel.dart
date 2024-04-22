import 'package:cloud_firestore/cloud_firestore.dart';

class KarirPost {
  final String posisi;
  final String lokasi;
  final String urlKarir;
  final String img;
  final String deskripsi;
  final String penyelenggara;
  final Timestamp startDate;
  final Timestamp endDate;

  KarirPost({
    required this.posisi,
    required this.penyelenggara,
    required this.lokasi,
    required this.urlKarir,
    required this.img,
    required this.deskripsi,
    required this.startDate,
    required this.endDate,
  });

  Map<String, dynamic> toMap() => {
        'posisi': posisi,
        'lokasi': lokasi,
        'urlKarir': urlKarir,
        'img': img,
        'deskripsi': deskripsi,
        'startDate': startDate,
        'endDate': endDate,
        'penyelenggara': penyelenggara,
      };
}
