import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unishare/app/modules/admin/karir/karircontroller.dart';
import 'package:unishare/app/modules/admin/karir/makekarirpost.dart';
import 'package:unishare/app/widgets/card/adminpost.dart';

class KarirAdmin extends StatelessWidget {
  final KarirService _karirService = KarirService();

  KarirAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Karir',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF252422),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Expanded(child: _buildKarirList()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MakeKarirPost(),
              ));
        },
        backgroundColor: const Color(0xFFF75600),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildKarirList() {
    return StreamBuilder(
        stream: _karirService.getKarirs(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading...');
          }
          return ListView(
            children:
                snapshot.data!.docs.map((doc) => _buildKarirItem(doc)).toList(),
          );
        });
  }

  Widget _buildKarirItem(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

    return AdminPostCard(
      type: data['posisi'],
      title: data['penyelenggara'],
      period: 'Open',
      location: data['lokasi'],
      thumbnailAsset: data['img'],
      delete: () {
        KarirService.deleteKompetisi(doc.id);
      },
      update: () {
        //disini
      },
    );
  }
}
