import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CareerPost {
  final String penyelenggara;
  final String posisi;
  final String lokasi;
  final String urlKarir;
  final String img;
  final Timestamp startDate;
  final Timestamp endDate;

  CareerPost({
    required this.penyelenggara,
    required this.posisi,
    required this.lokasi,
    required this.urlKarir,
    required this.img,
    required this.startDate,
    required this.endDate,
  });

  Map<String, dynamic> toJson() => {
    'penyelenggara': penyelenggara,
    'posisi': posisi,
    'lokasi': lokasi,
    'urlKarir': urlKarir,
    'img': img,
    'startDate': startDate,
    'endDate': endDate,
  };
}