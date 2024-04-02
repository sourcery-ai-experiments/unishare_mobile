import 'package:cloud_firestore/cloud_firestore.dart';

class AcaraPost {
  final String penyelenggara;
  final String judul;
  final String urlAcara;
  final String img;
  final String guidebook;
  final String deskripsi;
  final Timestamp startDate;
  final Timestamp endDate;

  AcaraPost({
    required this.penyelenggara,
    required this.judul,
    required this.urlAcara,
    required this.img,
    required this.guidebook,
    required this.deskripsi,
    required this.startDate,
    required this.endDate,
  });

  Map<String, dynamic> toJson() => {
    'penyelenggara': penyelenggara,
    'judul': judul,
    'urlAcara': urlAcara,
    'img': img,
    'guidebook': guidebook,
    'deskripsi': deskripsi,
    'startDate': startDate,
    'endDate': endDate,
  };
}