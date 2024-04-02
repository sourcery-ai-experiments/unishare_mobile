
import 'package:unishare/app/models/acara_kemahasiswaan.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class KompetisiService {
  static Future<List<AcaraKemahasiswaan>> getKompetisi() async {
    List<AcaraKemahasiswaan> kompetisi = [];

    await FirebaseFirestore.instance.collection('kompetisi').get().then((querySnapshot) {
      for (var result in querySnapshot.docs) {
        kompetisi.add(AcaraKemahasiswaan.fromJson(result.data()));
      }
    });
    return kompetisi;
  }

  static Future<AcaraKemahasiswaan> getKompetisiById(String id) async {
    AcaraKemahasiswaan kompetisi = AcaraKemahasiswaan();

    await FirebaseFirestore.instance.collection('kompetisi').doc(id).get().then((result) {
      kompetisi = AcaraKemahasiswaan.fromJson(result.data());
    });
    return kompetisi;
  }

  static Future<AcaraKemahasiswaan> updateKompetisi(AcaraKemahasiswaan kompetisi) async {
    await FirebaseFirestore.instance.collection('kompetisi').doc(kompetisi.id).update(kompetisi.toJson()) ;
    return kompetisi;
  }

  static Future<void> deleteKompetisi(String id) async {
    await FirebaseFirestore.instance.collection('kompetisi').doc(id).delete();
  }

}