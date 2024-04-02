import 'package:cloud_firestore/cloud_firestore.dart';

class AcaraKemahasiswaan {
  final String? id;
  final String? penyelenggara;
  final String? judul;
  final String? urlAcara;
  final String? img;
  final String? guidebook;
  final String? deskripsi;
  final Timestamp? startDate;
  final Timestamp? endDate;

  AcaraKemahasiswaan({
    this.id,
    this.penyelenggara,
    this.judul,
    this.urlAcara,
    this.img,
    this.guidebook,
    this.deskripsi,
    this.startDate,
    this.endDate,
  });

  factory AcaraKemahasiswaan.fromJson(Map<String, dynamic>? json) =>
      AcaraKemahasiswaan(
        penyelenggara: json?['penyelenggara'],
        judul: json?['judul'],
        urlAcara: json?['urlAcara'],
        img: json?['img'],
        guidebook: json?['guidebook'],
        deskripsi: json?['deskripsi'],
        startDate: json?['startDate'],
        endDate: json?['endDate'],
      );

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
