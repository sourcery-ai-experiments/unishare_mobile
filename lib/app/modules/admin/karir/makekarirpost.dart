import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unishare/app/modules/admin/karir/karircontroller.dart';
import 'package:unishare/app/modules/admin/karir/karirmodel.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class MakeKarirPost extends StatelessWidget {
  TextEditingController _posisiController = TextEditingController();
  TextEditingController _lokasiController = TextEditingController();
  TextEditingController _urlController = TextEditingController();
  TextEditingController _deskripsiController = TextEditingController();
  TextEditingController _penyelenggaraController = TextEditingController();
  //function

  MakeKarirPost({
    super.key,
  });

  Future<void> _openFilePicker(BuildContext context) async {
    try {
      final result = await FilePicker.platform.pickFiles();
      if (result != null) {
        final filePath = result.files.single.path;
      }
    } catch (e) {
      print('Error while picking the file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buat Karir',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF252422),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            // judul
            const Text(
              'Posisi Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _posisiController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Posisi tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            //penyelenggara
            const Text(
              'Penyelenggara',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _penyelenggaraController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Penyelenggara tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            //link Karir
            const Text(
              'Link Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _urlController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Link Acara tidak boleh kosong';
                }
                return null;
              },
            ),
            const SizedBox(height: 20),

            //tema
            const Text(
              'Tema',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            MyDropdownButton(
              dropdownValue: 'Teknologi',
              items: const [
                'Teknologi',
                'Sains',
                'Bisnis',
                'Desain',
                'Fotografi',
                'Manajemen'
              ],
            ),
            const SizedBox(height: 20),

            //kategori
            const Text(
              'Kategori',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            MyDropdownButton(
              dropdownValue: 'Kompetisi',
              items: const ['Kompetisi', 'Workshop', 'Seminar'],
            ),
            const SizedBox(height: 20),

            //guidebook
            const Text(
              'Guidebook',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //file input
            ElevatedButton(
              onPressed: () {
                _openFilePicker(context);
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8), // Adjust border radius as needed
                    side: const BorderSide(
                      color: Colors.black, // Adjust color of the dashed border
                      width: 2, // Adjust width of the dashed border
                      //style: BorderStyle., // Set border style to dashed
                    ),
                  ),
                ),
              ),
              child: const Text('Open File Picker'),
            ),
            const SizedBox(height: 20),

            //banner Karir
            const Text(
              'Banner Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //file input
            const SizedBox(height: 20),

            //deskripsi Karir
            const Text(
              'Deskripsi Karir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _deskripsiController,
              maxLines: null, // Allow for multi-line input
            ),
            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color.fromRGBO(247, 86, 0, 1)),
                    padding: MaterialStatePropertyAll(EdgeInsets.only(
                        left: 150, top: 20, right: 150, bottom: 20))),
                onPressed: () {
                  // Defer the validation until after the build method
                  Future.delayed(Duration.zero, () {
                    KarirPost karirPost = KarirPost(
                      posisi: _posisiController.text,
                      penyelenggara: _penyelenggaraController.text,
                      urlKarir: _urlController.text,
                      lokasi: 'Remote',
                      img: "/img/Wzrd.jpg",
                      deskripsi: _deskripsiController.text,
                      startDate: Timestamp.now(),
                      endDate: Timestamp.now(),
                    );
                    KarirService.addToFirestore(context, karirPost);
                  });
                },
                child: const Text('Unggah',
                    style: TextStyle(color: Colors.black87)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MyDropdownButton extends StatefulWidget {
  String dropdownValue;
  final List<String> items;

  MyDropdownButton(
      {super.key, required this.dropdownValue, required this.items});

  @override
  // ignore: library_private_types_in_public_api
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      isExpanded: true,
      value: widget.dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          widget.dropdownValue = newValue!;
        });
      },
      items: widget.items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
