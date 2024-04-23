import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unishare/app/modules/admin/beasiswa/beasiswa_model.dart';
import 'package:unishare/app/modules/admin/beasiswa/make_beasiswa_post.dart';
import 'package:unishare/app/modules/beasiswa/views/beasiswa_screen.dart';

class BeasiswaService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //create
  static Future<void> addToFirestore(
      BuildContext context, BeasiswaPost acaraPost) async {
    try {
      await FirebaseFirestore.instance
          .collection("beasiswa")
          .add(acaraPost.toMap());
      // Show success message or navigate to another screen
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Scholarship post uploaded successfully!')));
      Navigator.pop(context); // Assuming this is in a new screen
    } catch (error) {
      // Show error message to the user
    }
  }

  //read
  Stream<QuerySnapshot> getBeasiswas() {
    return _firestore.collection('beasiswa').snapshots();
  }

  //update
  static Future<BeasiswaPost> updateBeasiswa(
      BuildContext context, beasiswaPost, String id) async {
    await FirebaseFirestore.instance
        .collection('beasiswa')
        .doc(id)
        .update(beasiswaPost.toMap());
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Scholarship post updated successfully!')));
    Navigator.pop(context); // Assuming this is in a new screen
    return beasiswaPost;
  }

  //delete
  static Future<void> deleteBeasiswa(String id) async {
    await FirebaseFirestore.instance.collection('beasiswa').doc(id).delete();
  }
}
