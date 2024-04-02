import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unishare/models/acara_kemahasiswaan.dart';

class SeminarService {
  static Future<List<AcaraKemahasiswaan>> getSeminar() async {
    List<AcaraKemahasiswaan> seminar = [];

    await FirebaseFirestore.instance.collection('seminar').get().then((querySnapshot) {
      for (var result in querySnapshot.docs) {
        seminar.add(AcaraKemahasiswaan.fromJson(result.data()));
      }
    });
    return seminar;
  }

  static Future<AcaraKemahasiswaan> getSeminarById(String id) async {
    AcaraKemahasiswaan seminar = AcaraKemahasiswaan();

    await FirebaseFirestore.instance.collection('seminar').doc(id).get().then((result) {
      seminar = AcaraKemahasiswaan.fromJson(result.data());
    });
    return seminar;
  }

  static Future<AcaraKemahasiswaan> updateSeminar(AcaraKemahasiswaan seminar) async {
    await FirebaseFirestore.instance.collection('seminar').doc(seminar.id).update(seminar.toJson()) ;
    return seminar;
  }

  static Future<void> deleteSeminar(String id) async {
    await FirebaseFirestore.instance.collection('seminar').doc(id).delete();
  }
}